import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    private var users: [User] = [] {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
        loadUsers { (users) in
            self.users = users
        }
    }

    private func setupTableView() {
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = users[indexPath.row].phone

        return cell
    }
}

extension ViewController {
    private func loadUsers(completion: @escaping (([User]) -> Void)) {
        let url = URL(string: "https://jsonplaceholder.typicode.com/users")!
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                completion([])
                return
            }

            do {
                let decoder = JSONDecoder()
                let users = try decoder.decode([User].self, from: data)
                completion(users)
            } catch {
                completion([])
            }
        }
        task.resume()
    }
}
