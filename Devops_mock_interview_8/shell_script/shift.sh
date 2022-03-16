
while
    [ -n "$1" ]
do
    case "$1" in
    -b)
        echo "$2 is a branch"
        shift
        ;;
    -t)
       echo "$2 is a tag"
       shift
       ;;
    *)
        echo "Option $1 not recognized"
        exit 1
        ;;
    esac
    shift
done
