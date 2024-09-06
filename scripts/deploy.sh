rm -r _deploy/*
for lecture in _build/lecture_*; do

    OUTPUT=_deploy/$(basename $lecture)
    NUMBER=`echo ${lecture:(-2)}`

    echo $OUTPUT $lecture $NUMBER
    scorm $OUTPUT $lecture $NUMBER
done;
