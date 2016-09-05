.class final Lokhttp3/internal/tls/DistinguishedNameParser;
.super Ljava/lang/Object;
.source "DistinguishedNameParser.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:[C


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string/jumbo v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->a:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->b:I

    .line 44
    return-void
.end method

.method private a(I)I
    .registers 10

    .prologue
    const/16 v7, 0x61

    const/16 v6, 0x46

    const/16 v5, 0x41

    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 311
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->b:I

    if-lt v0, v1, :cond_2c

    .line 312
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Malformed DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_2c
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    aget-char v0, v0, p1

    .line 318
    if-lt v0, v3, :cond_46

    if-gt v0, v4, :cond_46

    .line 319
    add-int/lit8 v0, v0, -0x30

    .line 328
    :goto_36
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    add-int/lit8 v2, p1, 0x1

    aget-char v1, v1, v2

    .line 329
    if-lt v1, v3, :cond_72

    if-gt v1, v4, :cond_72

    .line 330
    add-int/lit8 v1, v1, -0x30

    .line 339
    :goto_42
    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    return v0

    .line 320
    :cond_46
    if-lt v0, v7, :cond_4f

    const/16 v1, 0x66

    if-gt v0, v1, :cond_4f

    .line 321
    add-int/lit8 v0, v0, -0x57

    goto :goto_36

    .line 322
    :cond_4f
    if-lt v0, v5, :cond_56

    if-gt v0, v6, :cond_56

    .line 323
    add-int/lit8 v0, v0, -0x37

    goto :goto_36

    .line 325
    :cond_56
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Malformed DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_72
    if-lt v1, v7, :cond_7b

    const/16 v2, 0x66

    if-gt v1, v2, :cond_7b

    .line 332
    add-int/lit8 v1, v1, -0x57

    goto :goto_42

    .line 333
    :cond_7b
    if-lt v1, v5, :cond_82

    if-gt v1, v6, :cond_82

    .line 334
    add-int/lit8 v1, v1, -0x37

    goto :goto_42

    .line 336
    :cond_82
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Malformed DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v3, 0x3d

    const/16 v2, 0x20

    .line 50
    :goto_4
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->b:I

    if-ge v0, v1, :cond_19

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_19

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    goto :goto_4

    .line 52
    :cond_19
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->b:I

    if-ne v0, v1, :cond_21

    .line 53
    const/4 v0, 0x0

    .line 99
    :goto_20
    return-object v0

    .line 57
    :cond_21
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    .line 60
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    .line 61
    :goto_2b
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->b:I

    if-ge v0, v1, :cond_48

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_48

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_48

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    goto :goto_2b

    .line 65
    :cond_48
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->b:I

    if-lt v0, v1, :cond_6a

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_6a
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    .line 74
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_bd

    .line 75
    :goto_76
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->b:I

    if-ge v0, v1, :cond_93

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_93

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_93

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    goto :goto_76

    .line 78
    :cond_93
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_a1

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->b:I

    if-ne v0, v1, :cond_bd

    .line 79
    :cond_a1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_bd
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    .line 87
    :goto_c3
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->b:I

    if-ge v0, v1, :cond_d8

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_d8

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    goto :goto_c3

    .line 92
    :cond_d8
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-le v0, v1, :cond_136

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_136

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    aget-char v0, v0, v1

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_100

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_136

    :cond_100
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_118

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_136

    :cond_118
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_130

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_136

    .line 96
    :cond_130
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    .line 99
    :cond_136
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    iget v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_20
.end method

.method private b()Ljava/lang/String;
    .registers 6

    .prologue
    .line 104
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    .line 105
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    .line 106
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    .line 109
    :goto_e
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->b:I

    if-ne v0, v1, :cond_30

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_30
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_57

    .line 115
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    .line 129
    :goto_40
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->b:I

    if-ge v0, v1, :cond_85

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_85

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    goto :goto_40

    .line 117
    :cond_57
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_78

    .line 118
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->e()C

    move-result v2

    aput-char v2, v0, v1

    .line 123
    :goto_6b
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    .line 124
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    goto :goto_e

    .line 121
    :cond_78
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto :goto_6b

    .line 132
    :cond_85
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    iget v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v3, 0x20

    .line 137
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->b:I

    if-lt v0, v1, :cond_26

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_26
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    .line 143
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    .line 148
    :goto_30
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->b:I

    if-eq v0, v1, :cond_54

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_54

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_54

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_81

    .line 150
    :cond_54
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    .line 171
    :cond_58
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    sub-int v2, v0, v1

    .line 172
    const/4 v0, 0x5

    if-lt v2, v0, :cond_65

    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_cf

    .line 173
    :cond_65
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_81
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_a8

    .line 155
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    .line 156
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    .line 159
    :goto_93
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->b:I

    if-ge v0, v1, :cond_58

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_58

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    goto :goto_93

    .line 162
    :cond_a8
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x41

    if-lt v0, v1, :cond_c7

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x46

    if-gt v0, v1, :cond_c7

    .line 163
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v2, v0, v1

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 166
    :cond_c7
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    goto/16 :goto_30

    .line 177
    :cond_cf
    div-int/lit8 v0, v2, 0x2

    new-array v3, v0, [B

    .line 178
    const/4 v1, 0x0

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    add-int/lit8 v0, v0, 0x1

    :goto_d8
    array-length v4, v3

    if-ge v1, v4, :cond_e7

    .line 179
    invoke-direct {p0, v0}, Lokhttp3/internal/tls/DistinguishedNameParser;->a(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 178
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_d8

    .line 182
    :cond_e7
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x20

    .line 187
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    .line 188
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    .line 190
    :cond_a
    :goto_a
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->b:I

    if-lt v0, v1, :cond_1f

    .line 192
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    iget v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 220
    :goto_1e
    return-object v0

    .line 195
    :cond_1f
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_ca

    .line 224
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 225
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    goto :goto_a

    .line 200
    :sswitch_3f
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    iget v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1e

    .line 203
    :sswitch_4e
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->e()C

    move-result v2

    aput-char v2, v0, v1

    .line 204
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    goto :goto_a

    .line 209
    :sswitch_63
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->f:I

    .line 211
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    .line 212
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    aput-char v4, v0, v1

    .line 214
    :goto_77
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->b:I

    if-ge v0, v1, :cond_96

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_96

    .line 215
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    aput-char v4, v0, v1

    .line 214
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    goto :goto_77

    .line 217
    :cond_96
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->b:I

    if-eq v0, v1, :cond_ba

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_ba

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_ba

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_a

    .line 220
    :cond_ba
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->f:I

    iget v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1e

    .line 195
    :sswitch_data_ca
    .sparse-switch
        0x20 -> :sswitch_63
        0x2b -> :sswitch_3f
        0x2c -> :sswitch_3f
        0x3b -> :sswitch_3f
        0x5c -> :sswitch_4e
    .end sparse-switch
.end method

.method private e()C
    .registers 4

    .prologue
    .line 232
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    .line 233
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->b:I

    if-ne v0, v1, :cond_28

    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_28
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_3e

    .line 256
    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->f()C

    move-result v0

    :goto_35
    return v0

    .line 252
    :sswitch_36
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    goto :goto_35

    .line 237
    nop

    :sswitch_data_3e
    .sparse-switch
        0x20 -> :sswitch_36
        0x22 -> :sswitch_36
        0x23 -> :sswitch_36
        0x25 -> :sswitch_36
        0x2a -> :sswitch_36
        0x2b -> :sswitch_36
        0x2c -> :sswitch_36
        0x3b -> :sswitch_36
        0x3c -> :sswitch_36
        0x3d -> :sswitch_36
        0x3e -> :sswitch_36
        0x5c -> :sswitch_36
        0x5f -> :sswitch_36
    .end sparse-switch
.end method

.method private f()C
    .registers 9

    .prologue
    const/16 v6, 0x80

    const/16 v2, 0x3f

    .line 263
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    invoke-direct {p0, v0}, Lokhttp3/internal/tls/DistinguishedNameParser;->a(I)I

    move-result v1

    .line 264
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    .line 266
    if-ge v1, v6, :cond_14

    .line 267
    int-to-char v0, v1

    .line 300
    :goto_13
    return v0

    .line 268
    :cond_14
    const/16 v0, 0xc0

    if-lt v1, v0, :cond_6f

    const/16 v0, 0xf7

    if-gt v1, v0, :cond_6f

    .line 271
    const/16 v0, 0xdf

    if-gt v1, v0, :cond_41

    .line 272
    const/4 v0, 0x1

    .line 273
    and-int/lit8 v1, v1, 0x1f

    .line 283
    :goto_23
    const/4 v3, 0x0

    move v7, v3

    move v3, v1

    move v1, v7

    :goto_27
    if-ge v1, v0, :cond_6d

    .line 284
    iget v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    .line 285
    iget v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iget v5, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->b:I

    if-eq v4, v5, :cond_3f

    iget-object v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v5, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v4, v4, v5

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_4d

    :cond_3f
    move v0, v2

    .line 286
    goto :goto_13

    .line 274
    :cond_41
    const/16 v0, 0xef

    if-gt v1, v0, :cond_49

    .line 275
    const/4 v0, 0x2

    .line 276
    and-int/lit8 v1, v1, 0xf

    goto :goto_23

    .line 278
    :cond_49
    const/4 v0, 0x3

    .line 279
    and-int/lit8 v1, v1, 0x7

    goto :goto_23

    .line 288
    :cond_4d
    iget v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    .line 290
    iget v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    invoke-direct {p0, v4}, Lokhttp3/internal/tls/DistinguishedNameParser;->a(I)I

    move-result v4

    .line 291
    iget v5, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    .line 292
    and-int/lit16 v5, v4, 0xc0

    if-eq v5, v6, :cond_65

    move v0, v2

    .line 293
    goto :goto_13

    .line 296
    :cond_65
    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    add-int/2addr v3, v4

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 298
    :cond_6d
    int-to-char v0, v3

    goto :goto_13

    :cond_6f
    move v0, v2

    .line 300
    goto :goto_13
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 350
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    .line 351
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->d:I

    .line 352
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->e:I

    .line 353
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->f:I

    .line 354
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    .line 356
    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->a()Ljava/lang/String;

    move-result-object v0

    .line 357
    if-nez v0, :cond_1a

    move-object v1, v2

    .line 391
    :cond_19
    :goto_19
    return-object v1

    .line 361
    :cond_1a
    const-string/jumbo v1, ""

    .line 363
    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iget v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->b:I

    if-ne v3, v4, :cond_25

    move-object v1, v2

    .line 364
    goto :goto_19

    .line 367
    :cond_25
    iget-object v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_ac

    .line 380
    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->d()Ljava/lang/String;

    move-result-object v1

    .line 386
    :goto_32
    :sswitch_32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 390
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->b:I

    if-lt v0, v1, :cond_4a

    move-object v1, v2

    .line 391
    goto :goto_19

    .line 369
    :sswitch_40
    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    .line 372
    :sswitch_45
    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    .line 394
    :cond_4a
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_5e

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_86

    .line 399
    :cond_5e
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    .line 400
    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->a()Ljava/lang/String;

    move-result-object v0

    .line 401
    if-nez v0, :cond_1a

    .line 402
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Malformed DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_86
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_5e

    .line 396
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Malformed DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :sswitch_data_ac
    .sparse-switch
        0x22 -> :sswitch_40
        0x23 -> :sswitch_45
        0x2b -> :sswitch_32
        0x2c -> :sswitch_32
        0x3b -> :sswitch_32
    .end sparse-switch
.end method
