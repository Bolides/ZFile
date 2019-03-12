//
//  AutomateZFileTests.swift
//  AutomateZFileTests
//
//  Created by Stijn on 21/12/2018.
//  Copyright © 2018 dooz. All rights reserved.
//

import Nimble
import Quick
import SourceryAutoProtocols
import ZFile
import ZFileMock

class FileSpec: QuickSpec
{
    override func spec()
    {
        describe("File creation")
        {
            it("can create current file")
            {
                expect { try File(path: "\(#file)") }.toNot(throwError())
            }

            it("throws for not existing path")
            {
                expect { try Folder(path: "/wrongPathFolder") }.to(throwError())
            }
        }

        describe("File mocking")
        {
            var sut: FileProtocolMock!

            beforeEach
            {
                expect { sut = try FileProtocolMock() }.toNot(throwError())
            }

            it("can init a mock")
            {
                expect(sut).toNot(beNil())
            }

            context("Functions without return value")
            {
                it("throws for not implemented stuff")
                {
                    expect { try sut.write(string: "mock test \(#file)", encoding: .utf8) }.toNot(throwError())
                }
            }
            context("Throw error when return value is not implemented")
            {
                it("throws for not implemented stuff")
                {
                    expect { try sut.copy(to: FolderProtocolMock()) }
                        .to(throwError(SourceryMockError.implementErrorCaseFor("No returnValue implemented for copyToClosure")))
                }
            }
        }
    }
}
