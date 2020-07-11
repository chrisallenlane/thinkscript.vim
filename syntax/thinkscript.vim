" Vim syntax file
" Language:     thinkscript
" Maintainer:   Chris Allen Lane <chris@chris-allen-lane.com>
" Last Change:  2020 July 11
"
" Language reference:
" https://tlc.thinkorswim.com/center/charting/thinkscript.html

" exit early if a syntax file has already been loaded
if exists("b:current_syntax")
  finish
endif

" thinkScript is case-sensitive
syntax case ignore

" Numbers
"{{{
syn match       thinkscriptNumber         "\<\d\+\>"
syn match       thinkscriptNumber         "\<\d\+\.\d*\>"
syn match       thinkscriptNumber         "\.\d\+\>"
hi def link     thinkscriptNumber         Number
"}}}

" Strings
"{{{
syn region      thinkscriptString         start=+"+ end=+"+
hi def link     thinkscriptString         String
"}}}

" Comments
"{{{
syn keyword     thinkscriptTodo           contained BUG FIXME KLUDGE NB NOTE TODO XXX
syn cluster     thinkscriptCommentGroup   contains=thinkscriptTodo
syn region      thinkscriptComment        start="#" end="$" contains=@thinkscriptCommentGroup,@Spell

hi def link     thinkscriptComment        Comment
hi def link     thinkscriptTodo           Todo
"}}}

" Functions
"{{{
" Functions -> Fundamentals
syn keyword thinkscriptFunction
  \ ask
  \ bid
  \ close
  \ high
  \ hl2
  \ hlc3
  \ imp_volatility
  \ low
  \ ohlc4
  \ open
  \ open_interest
  \ tick_count
  \ volume
  \ vwap

" Functions -> Option Related
syn keyword thinkscriptFunction
  \ Delta
  \ Gamma
  \ GetATMOption
  \ GetDaysToExpiration
  \ GetNextExpirationOption
  \ GetNextITMOption
  \ GetNextOTMOption
  \ GetStrike
  \ GetUnderlyingSymbol
  \ IsEuropean
  \ IsOptionable
  \ IsPut
  \ OptionPrice
  \ Rho
  \ Theta
  \ Vega

" Functions -> Technical Analysis
syn keyword thinkscriptFunction
  \ AccumDist
  \ Average
  \ BodyHeight
  \ EMA2
  \ ExpAverage
  \ FastKCustom
  \ GetMarketMakerMove
  \ GetMaxValueOffset
  \ GetMinValueOffset
  \ Highest
  \ HighestAll
  \ HighestWeighted
  \ IsAscending
  \ IsDescending
  \ IsDoji
  \ IsLongBlack
  \ IsLongWhite
  \ Lowest
  \ LowestAll
  \ LowestWeighted
  \ Median
  \ MidBodyVal
  \ MoneyFlow
  \ MovingAverage
  \ TrueRange
  \ Ulcer
  \ WildersAverage
  \ WMA

" Functions -> Mathematical and Trigonometric
syn keyword thinkscriptFunction
  \ AbsValue
  \ ACos
  \ ASin
  \ ATan
  \ Ceil
  \ Cos
  \ Crosses
  \ Exp
  \ Floor
  \ IsInfinite
  \ IsNaN
  \ Lg
  \ Log
  \ Max
  \ Min
  \ Power
  \ Random
  \ Round
  \ RoundDown
  \ RoundUp
  \ Sign
  \ Sin
  \ Sqr
  \ Sqrt
  \ Sum
  \ Tan
  \ TotalSum

" Functions -> Statistical
syn keyword thinkscriptFunction
  \ Correlation
  \ Covariance
  \ Inertia
  \ InertiaAll
  \ LinDev
  \ StDev
  \ StDevAll
  \ StErr
  \ StErrAll

" Functions -> Date and Time
syn keyword thinkscriptFunction
  \ CountTradingDays
  \ DaysFromDate
  \ DaysTillDate
  \ GetDay
  \ GetDayOfMonth
  \ GetDayOfWeek
  \ GetLastDay
  \ GetLastMonth
  \ GetLastWeek
  \ GetLastYear
  \ GetMonth
  \ GetTime
  \ GetWeek
  \ GetYear
  \ GetYYYYMMDD
  \ RegularTradingEnd
  \ RegularTradingStart
  \ SecondsFromTime
  \ SecondsTillTime

" Functions -> Corporate Actions
syn keyword thinkscriptFunction
  \ GetActualEarnings
  \ GetDividend
  \ GetEstimatedEarnings
  \ GetEventOffset
  \ GetSplitDenominator
  \ GetSplitNumerator
  \ HasConferenceCall
  \ HasEarnings

" Functions -> Look and Feel
syn keyword thinkscriptFunction
  \ AddChartBubble
  \ AddCloud
  \ AddLabel
  \ AddVerticalLine
  \ AssignBackgroundColor
  \ AssignNormGradientColor
  \ AssignPriceColor
  \ AssignValueColor
  \ Color
  \ CreateColor
  \ DefineColor
  \ DefineGlobalColor
  \ EnableApproximation
  \ GetColor
  \ GlobalColor
  \ Hide
  \ HideBubble
  \ HidePricePlot
  \ HideTitle
  \ SetChartType
  \ SetDefaultColor
  \ SetHiding
  \ SetLineWeight
  \ SetPaintingStrategy
  \ SetStyle
  \ TakeValueColor

" Functions -> Portfolio
syn keyword thinkscriptFunction
  \ GetAveragePrice
  \ GetNetLiq
  \ GetOpenPL
  \ GetQuantity
  \ GetTotalCash

" Functions -> Profiles
syn keyword thinkscriptFunction
  \ DataProfile
  \ GetHighest
  \ GetHighestValueArea
  \ GetLowest
  \ GetLowestValueArea
  \ GetPointOfControl
  \ MonkeyBars
  \ Show
  \ TimeProfile
  \ VolumeProfile

" Functions -> Stock Fundamentals
syn keyword thinkscriptFunction
  \ BookValuePerShare
  \ CurrentRatio
  \ DividendPayout
  \ DividendsPerShareTTM
  \ EarningsPerShareTTM
  \ FinancialLeverage
  \ FixedChargeCoverageRatio
  \ FreeCashFlowPerShare
  \ GrossProfitMargin
  \ InterestRate
  \ InventoryTurnover
  \ LongTermDebtToCapital
  \ NetProfitMargin
  \ OperatingProfitMargin
  \ QuickRatio
  \ ReturnOnAssets
  \ ReturnOnEquity
  \ SalesPerShare
  \ TaxRate
  \ TotalAssetTurnover

" Functions -> Others
syn keyword thinkscriptFunction
  \ AddOrder
  \ Alert
  \ AsDollars
  \ AsPercent
  \ AsPrice
  \ Assert
  \ AsText
  \ BarNumber
  \ Between
  \ CompoundValue
  \ Concat
  \ EntryPrice
  \ First
  \ FPL
  \ Fundamental
  \ GetAggregationPeriod
  \ GetInterestRate
  \ GetPriceType
  \ GetSymbol
  \ GetSymbolPart
  \ GetValue
  \ GetYield
  \ HasContractChangeEvent
  \ If
  \ TickSize
  \ TickValue

hi def link thinkscriptFunction Function
"}}}

" Constants
"{{{
syn keyword thinkscriptConstant
  \ AggregationPeriod
  \ Alert
  \ AverageType
  \ ChartType
  \ Color
  \ CrossingDirection
  \ Curve
  \ Double
  \ EarningTime
  \ Events
  \ FiscalPeriod
  \ FundamentalType
  \ MonkeyVolumeShowStyle
  \ NumberFormat
  \ OptionClass
  \ OrderType
  \ PaintingStrategy
  \ PricePerRow
  \ PriceType
  \ ProfitLossMode
  \ Sound

hi def link thinkscriptConstant Keyword
"}}}

" Declarations
"{{{
syn keyword thinkscriptDeclaration
  \ hide_on_daily
  \ hide_on_intraday
  \ lower
  \ on_volume
  \ once_per_bar
  \ real_size
  \ upper
  \ weak_volume_dependency
  \ zerobase

hi def link thinkscriptDeclaration Keyword
"}}}

" Operators
"{{{
syn keyword thinkscriptOperator
  \ above
  \ below
  \ between
  \ crosses
  \ equal
  \ equals
  \ false
  \ greater
  \ is
  \ less
  \ not
  \ or
  \ than
  \ to
  \ true

hi def link thinkscriptOperator Keyword
"}}}

" Reserved Words
"{{{
syn keyword thinkscriptReserved
  \ above
  \ ago
  \ and
  \ bar
  \ bars
  \ below
  \ between
  \ case
  \ crosses
  \ declare
  \ def
  \ default
  \ do
  \ else
  \ equal
  \ equals
  \ false
  \ fold
  \ from
  \ greater
  \ if
  \ input
  \ is
  \ less
  \ no
  \ not
  \ or
  \ plot
  \ profile
  \ rec
  \ reference
  \ script
  \ switch
  \ than
  \ then
  \ to
  \ true
  \ while
  \ with
  \ within
  \ yes

hi def link thinkscriptReserved Keyword
"}}}

let b:current_syntax = "thinkscript"

" vim: sw=2 sts=2 et foldmethod=marker
