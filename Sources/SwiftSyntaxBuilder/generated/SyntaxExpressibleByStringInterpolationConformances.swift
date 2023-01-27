
//// Automatically Generated by generate-swiftsyntaxbuilder
//// Do Not Edit Directly!
//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2022 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//


import SwiftSyntax
import SwiftParser
import SwiftParserDiagnostics

extension SyntaxParseable {
  public init(stringInterpolationOrThrow stringInterpolation: SyntaxStringInterpolation) throws {
    self = try performParse(source: stringInterpolation.sourceText, parse: { parser in 
        return Self.parse(from: &parser)
      })
  }
}

extension AccessorDeclSyntax: SyntaxExpressibleByStringInterpolation {
}

extension AttributeSyntax: SyntaxExpressibleByStringInterpolation {
}

extension CatchClauseSyntax: SyntaxExpressibleByStringInterpolation {
}

extension DeclSyntax: SyntaxExpressibleByStringInterpolation {
}

extension ExprSyntax: SyntaxExpressibleByStringInterpolation {
}

extension GenericParameterClauseSyntax: SyntaxExpressibleByStringInterpolation {
}

extension MemberDeclBlockSyntax: SyntaxExpressibleByStringInterpolation {
}

extension PatternSyntax: SyntaxExpressibleByStringInterpolation {
}

extension SourceFileSyntax: SyntaxExpressibleByStringInterpolation {
}

extension StmtSyntax: SyntaxExpressibleByStringInterpolation {
}

extension SwitchCaseSyntax: SyntaxExpressibleByStringInterpolation {
}

extension TypeSyntax: SyntaxExpressibleByStringInterpolation {
}

// TODO: This should be fileprivate, but is currently used in
// `ConvenienceInitializers.swift`. See the corresponding TODO there.
func performParse<SyntaxType: SyntaxProtocol>(source: [UInt8], parse: (inout Parser) throws -> SyntaxType) throws -> SyntaxType {
  return try source.withUnsafeBufferPointer { buffer in 
    var parser = Parser(buffer)
    // FIXME: When the parser supports incremental parsing, put the
    // interpolatedSyntaxNodes in so we don't have to parse them again.
    let result = try parse(&parser)
    if result.hasError {
      let diagnostics = ParseDiagnosticsGenerator.diagnostics(for: result)
      assert(!diagnostics.isEmpty)
      throw SyntaxStringInterpolationError.diagnostics(diagnostics, tree: Syntax(result))
    }
    return result
  }
}
