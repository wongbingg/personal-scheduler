//
//  ScheduleRepository.swift
//  PersonalScheduler
//
//  Created by 이원빈 on 2023/02/21.
//

protocol ScheduleRepository {
    func create(_ schedule: Schedule) async throws
    func read() async throws -> [Schedule]
    func update(_ schedule: Schedule, to editedSchedule: ScheduleModel) async throws
    func delete(_ schedule: Schedule) async throws
}
