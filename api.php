<?php
include 'connection.php';

header('Content-Type: application/json');

$action = $_POST['action'] ?? '';

switch($action) {
    case 'searchClothing':
        $search = $_POST['search'] ?? '';
        $category = $_POST['category'] ?? '';
        
        $stmt = $pdo->prepare("
            SELECT name, category_id 
            FROM clothing_items 
            WHERE name LIKE ? 
            AND category_id = (SELECT id FROM clothing_categories WHERE display_name = ?)
        ");
        $stmt->execute(["%$search%", $category]);
        echo json_encode($stmt->fetchAll());
        break;

    // Add other cases as needed...
}
?> 