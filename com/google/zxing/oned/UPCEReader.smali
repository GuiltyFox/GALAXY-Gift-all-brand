.class public final Lcom/google/zxing/oned/UPCEReader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "UPCEReader.java"


# static fields
.field private static final a:[I

.field private static final f:[[I


# instance fields
.field private final g:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0xa

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/google/zxing/oned/UPCEReader;->a:[I

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_48

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/UPCEReader;->f:[[I

    return-void

    .line 37
    :array_20
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 44
    :array_30
    .array-data 4
        0x38
        0x34
        0x32
        0x31
        0x2c
        0x26
        0x23
        0x2a
        0x29
        0x25
    .end array-data

    :array_48
    .array-data 4
        0x7
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEReader;->g:[I

    .line 53
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 97
    move v2, v1

    :goto_2
    const/4 v0, 0x1

    if-gt v2, v0, :cond_26

    move v0, v1

    .line 98
    :goto_6
    const/16 v3, 0xa

    if-ge v0, v3, :cond_22

    .line 99
    sget-object v3, Lcom/google/zxing/oned/UPCEReader;->f:[[I

    aget-object v3, v3, v2

    aget v3, v3, v0

    if-ne p1, v3, :cond_1f

    .line 100
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 101
    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    return-void

    .line 98
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 97
    :cond_22
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 106
    :cond_26
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 121
    const/4 v0, 0x6

    new-array v0, v0, [C

    .line 122
    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 124
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    aget-char v2, v0, v7

    .line 126
    packed-switch v2, :pswitch_data_66

    .line 146
    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 147
    const-string/jumbo v0, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    :goto_2c
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :pswitch_39
    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    const-string/jumbo v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v1, v0, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 136
    :pswitch_49
    invoke-virtual {v1, v0, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo v2, "00000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1, v0, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 141
    :pswitch_56
    invoke-virtual {v1, v0, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 142
    const-string/jumbo v2, "00000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    aget-char v0, v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 126
    nop

    :pswitch_data_66
    .packed-switch 0x30
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_49
        :pswitch_56
    .end packed-switch
.end method


# virtual methods
.method protected a(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .registers 15

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 58
    iget-object v5, p0, Lcom/google/zxing/oned/UPCEReader;->g:[I

    .line 59
    aput v2, v5, v2

    .line 60
    aput v2, v5, v10

    .line 61
    const/4 v0, 0x2

    aput v2, v5, v0

    .line 62
    const/4 v0, 0x3

    aput v2, v5, v0

    .line 63
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->a()I

    move-result v6

    .line 64
    aget v1, p2, v10

    move v4, v2

    move v0, v2

    .line 68
    :goto_16
    const/4 v3, 0x6

    if-ge v4, v3, :cond_42

    if-ge v1, v6, :cond_42

    .line 69
    sget-object v3, Lcom/google/zxing/oned/UPCEReader;->e:[[I

    invoke-static {p1, v5, v1, v3}, Lcom/google/zxing/oned/UPCEReader;->a(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v7

    .line 70
    rem-int/lit8 v3, v7, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    array-length v8, v5

    move v3, v1

    move v1, v2

    :goto_2c
    if-ge v1, v8, :cond_34

    aget v9, v5, v1

    .line 72
    add-int/2addr v3, v9

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 74
    :cond_34
    const/16 v1, 0xa

    if-lt v7, v1, :cond_3d

    .line 75
    rsub-int/lit8 v1, v4, 0x5

    shl-int v1, v10, v1

    or-int/2addr v0, v1

    .line 68
    :cond_3d
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v3

    goto :goto_16

    .line 79
    :cond_42
    invoke-static {p3, v0}, Lcom/google/zxing/oned/UPCEReader;->a(Ljava/lang/StringBuilder;I)V

    .line 81
    return v1
.end method

.method protected a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 91
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEReader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/zxing/oned/UPCEANReader;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected a(Lcom/google/zxing/common/BitArray;I)[I
    .registers 5

    .prologue
    .line 86
    const/4 v0, 0x1

    sget-object v1, Lcom/google/zxing/oned/UPCEReader;->a:[I

    invoke-static {p1, p2, v0, v1}, Lcom/google/zxing/oned/UPCEReader;->a(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v0

    return-object v0
.end method

.method b()Lcom/google/zxing/BarcodeFormat;
    .registers 2

    .prologue
    .line 111
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->p:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
