//
//  File.swift
//
//
//  Created by Arwa Alosaimi on 05/08/1445 AH.
//

import Vapor

struct DroneController: RouteCollection{
    func boot(routes: Vapor.RoutesBuilder) throws {
        let Drone = routes.grouped("Drone")
        Drone.post(use: createDrone)
        Drone.get(use: readDrone)
        Drone.put(use: updateDrone)
        Drone.delete(use: deleteDrone)
    }
}
func createDrone (req: Request) async throws -> String {
    return "New Drone Created"
}

func readDrone (req: Request) async throws -> String {
    return "all Drone Displyed"
}

func updateDrone (req: Request) async throws -> String {
    let DroneID = req.body.string ?? "nill"
    return "Update Drone by ID:\(DroneID)"
}

func deleteDrone (req: Request) async throws -> String {
    let DroneID = req.body.string ?? "nill"
    return "Delet Drone with ID:\(DroneID)"

    app.get("Drones") { req async throws -> [Drone]  in
        let Drones : [Drones] = [.init(name:"sara", age: 22, Major:"IT")]
//        let Drones : [Drones] = [.init(Drone_ID: UUID,Name: "DroneA7",Status: true, Model:"AF5G", CurrentLocation: "PNU")]
        return Drones
    }
}
struct Drone : Content {
    let Drone_ID = UUID()
    let Name : String
    let Status : Bool
    let Model : String
    let CurrentLocation : String
}
