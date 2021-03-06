//// Copyright 2018 Esri
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import ArcGIS

extension AGSRelationshipInfo {
    
    /// Is this a many-to-one relationship?
    public var isManyToOne: Bool {
        return cardinality == .oneToMany && role == .destination
    }
    
    /// Is this a one-to-many relationship?
    public var isOneToMany: Bool {
        return cardinality == .oneToMany && role == .origin
    }
}
