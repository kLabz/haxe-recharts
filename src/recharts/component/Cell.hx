package recharts.component;

/**
	Manually derived on 2020-01-04 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/component/Cell.tsx
*/

typedef CellProps = PresentationAttributes;

@:jsRequire('recharts', 'Cell')
extern class Cell extends ReactComponentOfProps<CellProps> {}
