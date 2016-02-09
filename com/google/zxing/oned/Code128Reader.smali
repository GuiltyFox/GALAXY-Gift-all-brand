.class public final Lcom/google/zxing/oned/Code128Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code128Reader.java"


# static fields
.field private static final CODE_CODE_A:I = 0x65

.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_A:I = 0x65

.field private static final CODE_FNC_4_B:I = 0x64

.field static final CODE_PATTERNS:[[I

.field private static final CODE_SHIFT:I = 0x62

.field private static final CODE_START_A:I = 0x67

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final MAX_AVG_VARIANCE:I = 0x40

.field private static final MAX_INDIVIDUAL_VARIANCE:I = 0xb3


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x6

    .line 39
    const/16 v0, 0x6b

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_3c2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_3d2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_3e2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3f2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_402

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_412

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_422

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_432

    aput-object v1, v0, v4

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_442

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_452

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_462

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_472

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_482

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_492

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_4a2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_4b2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_4c2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_4d2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_4e2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_4f2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_502

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_512

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_522

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_532

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_542

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_552

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_562

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_572

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_582

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_592

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_5a2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_5b2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [I

    fill-array-data v2, :array_5c2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [I

    fill-array-data v2, :array_5d2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [I

    fill-array-data v2, :array_5e2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [I

    fill-array-data v2, :array_5f2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [I

    fill-array-data v2, :array_602

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [I

    fill-array-data v2, :array_612

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [I

    fill-array-data v2, :array_622

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [I

    fill-array-data v2, :array_632

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [I

    fill-array-data v2, :array_642

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [I

    fill-array-data v2, :array_652

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [I

    fill-array-data v2, :array_662

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [I

    fill-array-data v2, :array_672

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [I

    fill-array-data v2, :array_682

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [I

    fill-array-data v2, :array_692

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [I

    fill-array-data v2, :array_6a2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [I

    fill-array-data v2, :array_6b2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [I

    fill-array-data v2, :array_6c2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [I

    fill-array-data v2, :array_6d2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v3, [I

    fill-array-data v2, :array_6e2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v3, [I

    fill-array-data v2, :array_6f2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [I

    fill-array-data v2, :array_702

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [I

    fill-array-data v2, :array_712

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v3, [I

    fill-array-data v2, :array_722

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v3, [I

    fill-array-data v2, :array_732

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v3, [I

    fill-array-data v2, :array_742

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v3, [I

    fill-array-data v2, :array_752

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v3, [I

    fill-array-data v2, :array_762

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v3, [I

    fill-array-data v2, :array_772

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v3, [I

    fill-array-data v2, :array_782

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v3, [I

    fill-array-data v2, :array_792

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v3, [I

    fill-array-data v2, :array_7a2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v3, [I

    fill-array-data v2, :array_7b2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v3, [I

    fill-array-data v2, :array_7c2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v3, [I

    fill-array-data v2, :array_7d2

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v3, [I

    fill-array-data v2, :array_7e2

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v3, [I

    fill-array-data v2, :array_7f2

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v3, [I

    fill-array-data v2, :array_802

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v3, [I

    fill-array-data v2, :array_812

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v3, [I

    fill-array-data v2, :array_822

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v3, [I

    fill-array-data v2, :array_832

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v3, [I

    fill-array-data v2, :array_842

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v3, [I

    fill-array-data v2, :array_852

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v3, [I

    fill-array-data v2, :array_862

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v3, [I

    fill-array-data v2, :array_872

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v3, [I

    fill-array-data v2, :array_882

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v3, [I

    fill-array-data v2, :array_892

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v3, [I

    fill-array-data v2, :array_8a2

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v3, [I

    fill-array-data v2, :array_8b2

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v3, [I

    fill-array-data v2, :array_8c2

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v3, [I

    fill-array-data v2, :array_8d2

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v3, [I

    fill-array-data v2, :array_8e2

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v3, [I

    fill-array-data v2, :array_8f2

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v3, [I

    fill-array-data v2, :array_902

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v3, [I

    fill-array-data v2, :array_912

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v3, [I

    fill-array-data v2, :array_922

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v3, [I

    fill-array-data v2, :array_932

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v3, [I

    fill-array-data v2, :array_942

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v3, [I

    fill-array-data v2, :array_952

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v3, [I

    fill-array-data v2, :array_962

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v3, [I

    fill-array-data v2, :array_972

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v3, [I

    fill-array-data v2, :array_982

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v3, [I

    fill-array-data v2, :array_992

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v3, [I

    fill-array-data v2, :array_9a2

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v3, [I

    fill-array-data v2, :array_9b2

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v3, [I

    fill-array-data v2, :array_9c2

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v3, [I

    fill-array-data v2, :array_9d2

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v3, [I

    fill-array-data v2, :array_9e2

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v3, [I

    fill-array-data v2, :array_9f2

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v3, [I

    fill-array-data v2, :array_a02

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v3, [I

    fill-array-data v2, :array_a12

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v3, [I

    fill-array-data v2, :array_a22

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v3, [I

    fill-array-data v2, :array_a32

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v3, [I

    fill-array-data v2, :array_a42

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v3, [I

    fill-array-data v2, :array_a52

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v4, [I

    fill-array-data v2, :array_a62

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    return-void

    :array_3c2
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_3d2
    .array-data 4
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_3e2
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_3f2
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x2
        0x3
    .end array-data

    :array_402
    .array-data 4
        0x1
        0x2
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_412
    .array-data 4
        0x1
        0x3
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_422
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x1
        0x3
    .end array-data

    :array_432
    .array-data 4
        0x1
        0x2
        0x2
        0x3
        0x1
        0x2
    .end array-data

    :array_442
    .array-data 4
        0x1
        0x3
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_452
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_462
    .array-data 4
        0x2
        0x2
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_472
    .array-data 4
        0x2
        0x3
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_482
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_492
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x3
        0x2
    .end array-data

    :array_4a2
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x3
        0x1
    .end array-data

    :array_4b2
    .array-data 4
        0x1
        0x1
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_4c2
    .array-data 4
        0x1
        0x2
        0x3
        0x1
        0x2
        0x2
    .end array-data

    :array_4d2
    .array-data 4
        0x1
        0x2
        0x3
        0x2
        0x2
        0x1
    .end array-data

    :array_4e2
    .array-data 4
        0x2
        0x2
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_4f2
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_502
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_512
    .array-data 4
        0x2
        0x1
        0x3
        0x2
        0x1
        0x2
    .end array-data

    :array_522
    .array-data 4
        0x2
        0x2
        0x3
        0x1
        0x1
        0x2
    .end array-data

    :array_532
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_542
    .array-data 4
        0x3
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_552
    .array-data 4
        0x3
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_562
    .array-data 4
        0x3
        0x2
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_572
    .array-data 4
        0x3
        0x1
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_582
    .array-data 4
        0x3
        0x2
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_592
    .array-data 4
        0x3
        0x2
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_5a2
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x2
        0x3
    .end array-data

    :array_5b2
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x2
        0x1
    .end array-data

    :array_5c2
    .array-data 4
        0x2
        0x3
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_5d2
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x2
        0x3
    .end array-data

    :array_5e2
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_5f2
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_602
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x1
        0x3
    .end array-data

    :array_612
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_622
    .array-data 4
        0x1
        0x3
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_632
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_642
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_652
    .array-data 4
        0x2
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_662
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x3
        0x3
    .end array-data

    :array_672
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x3
        0x1
    .end array-data

    :array_682
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_692
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x2
        0x3
    .end array-data

    :array_6a2
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x2
        0x1
    .end array-data

    :array_6b2
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_6c2
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_6d2
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_6e2
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_6f2
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_702
    .array-data 4
        0x2
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_712
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data

    :array_722
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_732
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_742
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x2
        0x1
    .end array-data

    :array_752
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_762
    .array-data 4
        0x3
        0x1
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_772
    .array-data 4
        0x3
        0x3
        0x2
        0x1
        0x1
        0x1
    .end array-data

    :array_782
    .array-data 4
        0x3
        0x1
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_792
    .array-data 4
        0x2
        0x2
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_7a2
    .array-data 4
        0x4
        0x3
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_7b2
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x2
        0x4
    .end array-data

    :array_7c2
    .array-data 4
        0x1
        0x1
        0x1
        0x4
        0x2
        0x2
    .end array-data

    :array_7d2
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x2
        0x4
    .end array-data

    :array_7e2
    .array-data 4
        0x1
        0x2
        0x1
        0x4
        0x2
        0x1
    .end array-data

    :array_7f2
    .array-data 4
        0x1
        0x4
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_802
    .array-data 4
        0x1
        0x4
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_812
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x1
        0x4
    .end array-data

    :array_822
    .array-data 4
        0x1
        0x1
        0x2
        0x4
        0x1
        0x2
    .end array-data

    :array_832
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x1
        0x4
    .end array-data

    :array_842
    .array-data 4
        0x1
        0x2
        0x2
        0x4
        0x1
        0x1
    .end array-data

    :array_852
    .array-data 4
        0x1
        0x4
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_862
    .array-data 4
        0x1
        0x4
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_872
    .array-data 4
        0x2
        0x4
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_882
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_892
    .array-data 4
        0x4
        0x1
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_8a2
    .array-data 4
        0x2
        0x4
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_8b2
    .array-data 4
        0x1
        0x3
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_8c2
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x4
        0x2
    .end array-data

    :array_8d2
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x4
        0x2
    .end array-data

    :array_8e2
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x4
        0x1
    .end array-data

    :array_8f2
    .array-data 4
        0x1
        0x1
        0x4
        0x2
        0x1
        0x2
    .end array-data

    :array_902
    .array-data 4
        0x1
        0x2
        0x4
        0x1
        0x1
        0x2
    .end array-data

    :array_912
    .array-data 4
        0x1
        0x2
        0x4
        0x2
        0x1
        0x1
    .end array-data

    :array_922
    .array-data 4
        0x4
        0x1
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_932
    .array-data 4
        0x4
        0x2
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_942
    .array-data 4
        0x4
        0x2
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_952
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x4
        0x1
    .end array-data

    :array_962
    .array-data 4
        0x2
        0x1
        0x4
        0x1
        0x2
        0x1
    .end array-data

    :array_972
    .array-data 4
        0x4
        0x1
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_982
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x3
    .end array-data

    :array_992
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x4
        0x1
    .end array-data

    :array_9a2
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_9b2
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x1
        0x3
    .end array-data

    :array_9c2
    .array-data 4
        0x1
        0x1
        0x4
        0x3
        0x1
        0x1
    .end array-data

    :array_9d2
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_9e2
    .array-data 4
        0x4
        0x1
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_9f2
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x4
        0x1
    .end array-data

    :array_a02
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x3
        0x1
    .end array-data

    :array_a12
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_a22
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_a32
    .array-data 4
        0x2
        0x1
        0x1
        0x4
        0x1
        0x2
    .end array-data

    :array_a42
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x4
    .end array-data

    :array_a52
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x3
        0x2
    .end array-data

    :array_a62
    .array-data 4
        0x2
        0x3
        0x3
        0x1
        0x1
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    return-void
.end method

.method private static decodeCode(Lcom/google/zxing/common/BitArray;[II)I
    .registers 9
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "counters"    # [I
    .param p2, "rowOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/Code128Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 217
    const/16 v1, 0x40

    .line 218
    .local v1, "bestVariance":I
    const/4 v0, -0x1

    .line 219
    .local v0, "bestMatch":I
    const/4 v2, 0x0

    .local v2, "d":I
    :goto_7
    sget-object v5, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    array-length v5, v5

    if-ge v2, v5, :cond_1d

    .line 220
    sget-object v5, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v3, v5, v2

    .line 221
    .local v3, "pattern":[I
    const/16 v5, 0xb3

    invoke-static {p1, v3, v5}, Lcom/google/zxing/oned/Code128Reader;->patternMatchVariance([I[II)I

    move-result v4

    .line 222
    .local v4, "variance":I
    if-ge v4, v1, :cond_1a

    .line 223
    move v1, v4

    .line 224
    move v0, v2

    .line 219
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 228
    .end local v3    # "pattern":[I
    .end local v4    # "variance":I
    :cond_1d
    if-ltz v0, :cond_20

    .line 229
    return v0

    .line 231
    :cond_20
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5
.end method

.method private static findStartPattern(Lcom/google/zxing/common/BitArray;)[I
    .registers 16
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v11

    .line 171
    .local v11, "width":I
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v8

    .line 173
    .local v8, "rowOffset":I
    const/4 v2, 0x0

    .line 174
    .local v2, "counterPosition":I
    const/4 v12, 0x6

    new-array v3, v12, [I

    .line 175
    .local v3, "counters":[I
    move v7, v8

    .line 176
    .local v7, "patternStart":I
    const/4 v5, 0x0

    .line 177
    .local v5, "isWhite":Z
    array-length v6, v3

    .line 179
    .local v6, "patternLength":I
    move v4, v8

    .local v4, "i":I
    :goto_11
    if-ge v4, v11, :cond_89

    .line 180
    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v12

    xor-int/2addr v12, v5

    if-eqz v12, :cond_23

    .line 181
    aget v12, v3, v2

    add-int/lit8 v12, v12, 0x1

    aput v12, v3, v2

    .line 179
    :goto_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 183
    :cond_23
    add-int/lit8 v12, v6, -0x1

    if-ne v2, v12, :cond_84

    .line 184
    const/16 v1, 0x40

    .line 185
    .local v1, "bestVariance":I
    const/4 v0, -0x1

    .line 186
    .local v0, "bestMatch":I
    const/16 v9, 0x67

    .local v9, "startCode":I
    :goto_2c
    const/16 v12, 0x69

    if-gt v9, v12, :cond_41

    .line 187
    sget-object v12, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v12, v12, v9

    const/16 v13, 0xb3

    invoke-static {v3, v12, v13}, Lcom/google/zxing/oned/Code128Reader;->patternMatchVariance([I[II)I

    move-result v10

    .line 189
    .local v10, "variance":I
    if-ge v10, v1, :cond_3e

    .line 190
    move v1, v10

    .line 191
    move v0, v9

    .line 186
    :cond_3e
    add-int/lit8 v9, v9, 0x1

    goto :goto_2c

    .line 195
    .end local v10    # "variance":I
    :cond_41
    if-ltz v0, :cond_62

    const/4 v12, 0x0

    sub-int v13, v4, v7

    div-int/lit8 v13, v13, 0x2

    sub-int v13, v7, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v7, v13}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v12

    if-eqz v12, :cond_62

    .line 197
    const/4 v12, 0x3

    new-array v12, v12, [I

    const/4 v13, 0x0

    aput v7, v12, v13

    const/4 v13, 0x1

    aput v4, v12, v13

    const/4 v13, 0x2

    aput v0, v12, v13

    return-object v12

    .line 199
    :cond_62
    const/4 v12, 0x0

    aget v12, v3, v12

    const/4 v13, 0x1

    aget v13, v3, v13

    add-int/2addr v12, v13

    add-int/2addr v7, v12

    .line 200
    const/4 v12, 0x2

    const/4 v13, 0x0

    add-int/lit8 v14, v6, -0x2

    invoke-static {v3, v12, v3, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    add-int/lit8 v12, v6, -0x2

    const/4 v13, 0x0

    aput v13, v3, v12

    .line 202
    add-int/lit8 v12, v6, -0x1

    const/4 v13, 0x0

    aput v13, v3, v12

    .line 203
    add-int/lit8 v2, v2, -0x1

    .line 207
    .end local v0    # "bestMatch":I
    .end local v1    # "bestVariance":I
    .end local v9    # "startCode":I
    :goto_7d
    const/4 v12, 0x1

    aput v12, v3, v2

    .line 208
    if-nez v5, :cond_87

    const/4 v5, 0x1

    :goto_83
    goto :goto_20

    .line 205
    :cond_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    .line 208
    :cond_87
    const/4 v5, 0x0

    goto :goto_83

    .line 211
    :cond_89
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 42
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 239
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-eqz p3, :cond_1f

    sget-object v32, Lcom/google/zxing/DecodeHintType;->ASSUME_GS1:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1f

    const/4 v9, 0x1

    .line 241
    .local v9, "convertFNC1":Z
    :goto_f
    invoke-static/range {p2 .. p2}, Lcom/google/zxing/oned/Code128Reader;->findStartPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v30

    .line 242
    .local v30, "startPatternInfo":[I
    const/16 v32, 0x2

    aget v29, v30, v32

    .line 244
    .local v29, "startCode":I
    packed-switch v29, :pswitch_data_2a2

    .line 255
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v32

    throw v32

    .line 239
    .end local v9    # "convertFNC1":Z
    .end local v29    # "startCode":I
    .end local v30    # "startPatternInfo":[I
    :cond_1f
    const/4 v9, 0x0

    goto :goto_f

    .line 246
    .restart local v9    # "convertFNC1":Z
    .restart local v29    # "startCode":I
    .restart local v30    # "startPatternInfo":[I
    :pswitch_21
    const/16 v8, 0x65

    .line 258
    .local v8, "codeSet":I
    :goto_23
    const/4 v12, 0x0

    .line 259
    .local v12, "done":Z
    const/4 v15, 0x0

    .line 261
    .local v15, "isNextShifted":Z
    new-instance v26, Ljava/lang/StringBuilder;

    const/16 v32, 0x14

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 262
    .local v26, "result":Ljava/lang/StringBuilder;
    new-instance v24, Ljava/util/ArrayList;

    const/16 v32, 0x14

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    .local v24, "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/16 v32, 0x0

    aget v18, v30, v32

    .line 265
    .local v18, "lastStart":I
    const/16 v32, 0x1

    aget v22, v30, v32

    .line 266
    .local v22, "nextStart":I
    const/16 v32, 0x6

    move/from16 v0, v32

    new-array v11, v0, [I

    .line 268
    .local v11, "counters":[I
    const/16 v17, 0x0

    .line 269
    .local v17, "lastCode":I
    const/4 v7, 0x0

    .line 270
    .local v7, "code":I
    move/from16 v6, v29

    .line 271
    .local v6, "checksumTotal":I
    const/16 v21, 0x0

    .line 272
    .local v21, "multiplier":I
    const/16 v16, 0x1

    .line 274
    .local v16, "lastCharacterWasPrintable":Z
    :cond_52
    :goto_52
    if-nez v12, :cond_1b6

    .line 276
    move/from16 v31, v15

    .line 277
    .local v31, "unshift":Z
    const/4 v15, 0x0

    .line 280
    move/from16 v17, v7

    .line 283
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-static {v0, v11, v1}, Lcom/google/zxing/oned/Code128Reader;->decodeCode(Lcom/google/zxing/common/BitArray;[II)I

    move-result v7

    .line 285
    int-to-byte v0, v7

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    const/16 v32, 0x6a

    move/from16 v0, v32

    if-eq v7, v0, :cond_77

    .line 289
    const/16 v16, 0x1

    .line 293
    :cond_77
    const/16 v32, 0x6a

    move/from16 v0, v32

    if-eq v7, v0, :cond_83

    .line 294
    add-int/lit8 v21, v21, 0x1

    .line 295
    mul-int v32, v21, v7

    add-int v6, v6, v32

    .line 299
    :cond_83
    move/from16 v18, v22

    .line 300
    move-object v5, v11

    .local v5, "arr$":[I
    array-length v0, v5

    move/from16 v20, v0

    .local v20, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_8a
    move/from16 v0, v20

    if-ge v14, v0, :cond_9b

    aget v10, v5, v14

    .line 301
    .local v10, "counter":I
    add-int v22, v22, v10

    .line 300
    add-int/lit8 v14, v14, 0x1

    goto :goto_8a

    .line 249
    .end local v5    # "arr$":[I
    .end local v6    # "checksumTotal":I
    .end local v7    # "code":I
    .end local v8    # "codeSet":I
    .end local v10    # "counter":I
    .end local v11    # "counters":[I
    .end local v12    # "done":Z
    .end local v14    # "i$":I
    .end local v15    # "isNextShifted":Z
    .end local v16    # "lastCharacterWasPrintable":Z
    .end local v17    # "lastCode":I
    .end local v18    # "lastStart":I
    .end local v20    # "len$":I
    .end local v21    # "multiplier":I
    .end local v22    # "nextStart":I
    .end local v24    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v26    # "result":Ljava/lang/StringBuilder;
    .end local v31    # "unshift":Z
    :pswitch_95
    const/16 v8, 0x64

    .line 250
    .restart local v8    # "codeSet":I
    goto :goto_23

    .line 252
    .end local v8    # "codeSet":I
    :pswitch_98
    const/16 v8, 0x63

    .line 253
    .restart local v8    # "codeSet":I
    goto :goto_23

    .line 305
    .restart local v5    # "arr$":[I
    .restart local v6    # "checksumTotal":I
    .restart local v7    # "code":I
    .restart local v11    # "counters":[I
    .restart local v12    # "done":Z
    .restart local v14    # "i$":I
    .restart local v15    # "isNextShifted":Z
    .restart local v16    # "lastCharacterWasPrintable":Z
    .restart local v17    # "lastCode":I
    .restart local v18    # "lastStart":I
    .restart local v20    # "len$":I
    .restart local v21    # "multiplier":I
    .restart local v22    # "nextStart":I
    .restart local v24    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .restart local v26    # "result":Ljava/lang/StringBuilder;
    .restart local v31    # "unshift":Z
    :cond_9b
    packed-switch v7, :pswitch_data_2ac

    .line 312
    packed-switch v8, :pswitch_data_2b6

    .line 438
    :cond_a1
    :goto_a1
    :pswitch_a1
    if-eqz v31, :cond_52

    .line 439
    const/16 v32, 0x65

    move/from16 v0, v32

    if-ne v8, v0, :cond_1b2

    const/16 v8, 0x64

    :goto_ab
    goto :goto_52

    .line 309
    :pswitch_ac
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v32

    throw v32

    .line 315
    :pswitch_b1
    const/16 v32, 0x40

    move/from16 v0, v32

    if-ge v7, v0, :cond_c6

    .line 316
    add-int/lit8 v32, v7, 0x20

    move/from16 v0, v32

    int-to-char v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a1

    .line 317
    :cond_c6
    const/16 v32, 0x60

    move/from16 v0, v32

    if-ge v7, v0, :cond_db

    .line 318
    add-int/lit8 v32, v7, -0x40

    move/from16 v0, v32

    int-to-char v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a1

    .line 322
    :cond_db
    const/16 v32, 0x6a

    move/from16 v0, v32

    if-eq v7, v0, :cond_e3

    .line 323
    const/16 v16, 0x0

    .line 325
    :cond_e3
    packed-switch v7, :pswitch_data_2c0

    :pswitch_e6
    goto :goto_a1

    .line 344
    :pswitch_e7
    const/4 v15, 0x1

    .line 345
    const/16 v8, 0x64

    .line 346
    goto :goto_a1

    .line 327
    :pswitch_eb
    if-eqz v9, :cond_a1

    .line 328
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->length()I

    move-result v32

    if-nez v32, :cond_fd

    .line 331
    const-string v32, "]C1"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a1

    .line 334
    :cond_fd
    const/16 v32, 0x1d

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a1

    .line 348
    :pswitch_107
    const/16 v8, 0x64

    .line 349
    goto :goto_a1

    .line 351
    :pswitch_10a
    const/16 v8, 0x63

    .line 352
    goto :goto_a1

    .line 354
    :pswitch_10d
    const/4 v12, 0x1

    goto :goto_a1

    .line 360
    :pswitch_10f
    const/16 v32, 0x60

    move/from16 v0, v32

    if-ge v7, v0, :cond_125

    .line 361
    add-int/lit8 v32, v7, 0x20

    move/from16 v0, v32

    int-to-char v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_a1

    .line 363
    :cond_125
    const/16 v32, 0x6a

    move/from16 v0, v32

    if-eq v7, v0, :cond_12d

    .line 364
    const/16 v16, 0x0

    .line 366
    :cond_12d
    packed-switch v7, :pswitch_data_2da

    :pswitch_130
    goto/16 :goto_a1

    .line 385
    :pswitch_132
    const/4 v15, 0x1

    .line 386
    const/16 v8, 0x65

    .line 387
    goto/16 :goto_a1

    .line 368
    :pswitch_137
    if-eqz v9, :cond_a1

    .line 369
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->length()I

    move-result v32

    if-nez v32, :cond_14a

    .line 372
    const-string v32, "]C1"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a1

    .line 375
    :cond_14a
    const/16 v32, 0x1d

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_a1

    .line 389
    :pswitch_155
    const/16 v8, 0x65

    .line 390
    goto/16 :goto_a1

    .line 392
    :pswitch_159
    const/16 v8, 0x63

    .line 393
    goto/16 :goto_a1

    .line 395
    :pswitch_15d
    const/4 v12, 0x1

    goto/16 :goto_a1

    .line 401
    :pswitch_160
    const/16 v32, 0x64

    move/from16 v0, v32

    if-ge v7, v0, :cond_17c

    .line 402
    const/16 v32, 0xa

    move/from16 v0, v32

    if-ge v7, v0, :cond_175

    .line 403
    const/16 v32, 0x30

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 405
    :cond_175
    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_a1

    .line 407
    :cond_17c
    const/16 v32, 0x6a

    move/from16 v0, v32

    if-eq v7, v0, :cond_184

    .line 408
    const/16 v16, 0x0

    .line 410
    :cond_184
    packed-switch v7, :pswitch_data_2f4

    :pswitch_187
    goto/16 :goto_a1

    .line 427
    :pswitch_189
    const/16 v8, 0x64

    .line 428
    goto/16 :goto_a1

    .line 412
    :pswitch_18d
    if-eqz v9, :cond_a1

    .line 413
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->length()I

    move-result v32

    if-nez v32, :cond_1a0

    .line 416
    const-string v32, "]C1"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a1

    .line 419
    :cond_1a0
    const/16 v32, 0x1d

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_a1

    .line 424
    :pswitch_1ab
    const/16 v8, 0x65

    .line 425
    goto/16 :goto_a1

    .line 430
    :pswitch_1af
    const/4 v12, 0x1

    goto/16 :goto_a1

    .line 439
    :cond_1b2
    const/16 v8, 0x65

    goto/16 :goto_ab

    .line 447
    .end local v5    # "arr$":[I
    .end local v14    # "i$":I
    .end local v20    # "len$":I
    .end local v31    # "unshift":Z
    :cond_1b6
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v22

    .line 448
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v32

    sub-int v33, v22, v18

    div-int/lit8 v33, v33, 0x2

    add-int v33, v33, v22

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->min(II)I

    move-result v32

    const/16 v33, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v32

    if-nez v32, :cond_1e1

    .line 451
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v32

    throw v32

    .line 455
    :cond_1e1
    mul-int v32, v21, v17

    sub-int v6, v6, v32

    .line 457
    rem-int/lit8 v32, v6, 0x67

    move/from16 v0, v32

    move/from16 v1, v17

    if-eq v0, v1, :cond_1f2

    .line 458
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v32

    throw v32

    .line 462
    :cond_1f2
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->length()I

    move-result v27

    .line 463
    .local v27, "resultLength":I
    if-nez v27, :cond_1fd

    .line 465
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v32

    throw v32

    .line 470
    :cond_1fd
    if-lez v27, :cond_212

    if-eqz v16, :cond_212

    .line 471
    const/16 v32, 0x63

    move/from16 v0, v32

    if-ne v8, v0, :cond_250

    .line 472
    add-int/lit8 v32, v27, -0x2

    move-object/from16 v0, v26

    move/from16 v1, v32

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 478
    :cond_212
    :goto_212
    const/16 v32, 0x1

    aget v32, v30, v32

    const/16 v33, 0x0

    aget v33, v30, v33

    add-int v32, v32, v33

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x40000000

    div-float v19, v32, v33

    .line 479
    .local v19, "left":F
    add-int v32, v22, v18

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x40000000

    div-float v28, v32, v33

    .line 481
    .local v28, "right":F
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v25

    .line 482
    .local v25, "rawCodesSize":I
    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 483
    .local v23, "rawBytes":[B
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_23b
    move/from16 v0, v25

    if-ge v13, v0, :cond_25c

    .line 484
    move-object/from16 v0, v24

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Byte;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Byte;->byteValue()B

    move-result v32

    aput-byte v32, v23, v13

    .line 483
    add-int/lit8 v13, v13, 0x1

    goto :goto_23b

    .line 474
    .end local v13    # "i":I
    .end local v19    # "left":F
    .end local v23    # "rawBytes":[B
    .end local v25    # "rawCodesSize":I
    .end local v28    # "right":F
    :cond_250
    add-int/lit8 v32, v27, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v32

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_212

    .line 487
    .restart local v13    # "i":I
    .restart local v19    # "left":F
    .restart local v23    # "rawBytes":[B
    .restart local v25    # "rawCodesSize":I
    .restart local v28    # "right":F
    :cond_25c
    new-instance v32, Lcom/google/zxing/Result;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    new-instance v36, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v36

    move/from16 v1, v19

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v36, v34, v35

    const/16 v35, 0x1

    new-instance v36, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v36

    move/from16 v1, v28

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v36, v34, v35

    sget-object v35, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v23

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v32

    .line 244
    :pswitch_data_2a2
    .packed-switch 0x67
        :pswitch_21
        :pswitch_95
        :pswitch_98
    .end packed-switch

    .line 305
    :pswitch_data_2ac
    .packed-switch 0x67
        :pswitch_ac
        :pswitch_ac
        :pswitch_ac
    .end packed-switch

    .line 312
    :pswitch_data_2b6
    .packed-switch 0x63
        :pswitch_160
        :pswitch_10f
        :pswitch_b1
    .end packed-switch

    .line 325
    :pswitch_data_2c0
    .packed-switch 0x60
        :pswitch_a1
        :pswitch_a1
        :pswitch_e7
        :pswitch_10a
        :pswitch_107
        :pswitch_a1
        :pswitch_eb
        :pswitch_e6
        :pswitch_e6
        :pswitch_e6
        :pswitch_10d
    .end packed-switch

    .line 366
    :pswitch_data_2da
    .packed-switch 0x60
        :pswitch_a1
        :pswitch_a1
        :pswitch_132
        :pswitch_159
        :pswitch_a1
        :pswitch_155
        :pswitch_137
        :pswitch_130
        :pswitch_130
        :pswitch_130
        :pswitch_15d
    .end packed-switch

    .line 410
    :pswitch_data_2f4
    .packed-switch 0x64
        :pswitch_189
        :pswitch_1ab
        :pswitch_18d
        :pswitch_187
        :pswitch_187
        :pswitch_187
        :pswitch_1af
    .end packed-switch
.end method
