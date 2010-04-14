#region Apache License 2.0

// Copyright 2008-2010 Christian Rodemeyer
// 
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// 
// http://www.apache.org/licenses/LICENSE-2.0
// 
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#endregion

using System;
using System.Collections.Generic;
using System.Linq;
using SvnQuery;

namespace SvnFind
{
    public class ResultViewModel
    {
        readonly Result _result;

        public ResultViewModel(Result result)
        {
            _result = result;
        }

        public string Overview
        {
            get { return _result.Index.TotalCount + " files searched in " + _result.SearchTime.TotalMilliseconds + "ms"; }
        }

        public IEnumerable<HitViewModel> Hits
        {
            get
            {
                foreach (Hit hit in _result.Hits)
                {
                    yield return new HitViewModel(hit);
                }

            }            
           
        }

    }
}