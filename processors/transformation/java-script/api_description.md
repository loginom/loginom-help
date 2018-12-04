# ![](../../../media/app/icons/component-18/component-default-55.svg) Полное описание API

```javascript
const InputTable: IDataSource;
const InputTables: IDataSource[];
const OutputTable: IOutputTable;
const InputVariables: IVariables;

enum DataType { None, Boolean, DateTime, Float, Integer, String, Variant }

enum DataKind { Undefined, Continuous, Discrete }

enum UsageType { Unspecified, Excluded, Useless, Active, Predicted, Key, Group, Value, Transaction, Item }

interface IColumn extends Iterable<boolean | number | string | Date | undefined> {
    readonly Index: number;
    readonly Name: string;
    readonly DisplayName: string;
    readonly DataType: DataType;
    readonly DataKind: DataKind;
    readonly DefaultUsageType: UsageType;
    readonly RowCount: number;
    Get(row: number): boolean | number | string | Date | undefined;
    IsNull(row: number): boolean;
}

interface IColumns extends Iterable<IColumn> {
    [name: string]: IColumn;
    [index: number]: IColumn;
}

interface IDataSource {
    readonly Columns: IColumns;
    readonly ColumnCount: number;
    readonly RowCount: number;
    Get(row: number, col: number | string): boolean | number | string | Date | undefined;
    IsNull(row: number, col: number | string): boolean;
}

interface IOutputTable extends IDataSource {
    Append(): void;
    Set(col: number | string, value: boolean | number | string | Date | null | undefined): void;
}

interface IVariable {
    readonly Index: number;
    readonly Name: string;
    readonly DisplayName: string;
    readonly DataType: DataType;
    readonly Value: boolean | number | string | Date | undefined;
    readonly IsNull: boolean;
}

interface IVariableItems extends Iterable<Variable> {
    [name: string]: IVariable;
    [index: number]: IVariable;
}

interface IVariables {
    readonly Items: IVariableItems;
    readonly Count: number;
}
```