//
//  TaskViewModel.swift
//  TaskCountdown
//
//  Created by 우주형 on 2022/12/23.
//

import Foundation

class TaskViewModel {
    
    //MARK: - variables
    private var task: Task!
    
    private let taskTypes: [TaskType] = [
        TaskType(symbolName: "star", typeName: "Priority"),
        TaskType(symbolName: "iphone", typeName: "Develop"),
        TaskType(symbolName: "gamecontroller", typeName: "Gaming"),
        TaskType(symbolName: "wand.and.stars.inverse", typeName: "Editing")
    ]
    
    private var selectedIndex =  -1 {
        didSet {
            self.task.taskType = self.getTaskTypes()[selectedIndex]
        }
    }
    
    private var hours = Box(0)
    private var minutes = Box(0)
    private var seconds = Box(0)
    
    //MARK: - init
    init() {
        task = Task(taskName: "", taskDescription: "", seconds: 0, taskType: .init(symbolName: "", typeName: ""), timeStamp: 0)
    }
    
    
    //MARK: - functions
    func setSelectedIndex(to value: Int) {
        self.selectedIndex = value
    }
    
    func setTaskName(to value: String) {
        self.task.taskName = value
    }
    
    func setTaskDescription(to value: String) {
        self.task.taskDescription = value
    }
    
    func getSelectedIndex() -> Int {
        self.selectedIndex
    }
    
    func getTask() -> Task {
        return self.task
    }
    
    func getTaskTypes() -> [TaskType] {
        return self.taskTypes
    }
    
}
