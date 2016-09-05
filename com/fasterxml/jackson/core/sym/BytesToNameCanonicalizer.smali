.class public final Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# static fields
.field private static final DEFAULT_T_SIZE:I = 0x40

.field static final INITIAL_COLLISION_LEN:I = 0x20

.field static final LAST_VALID_BUCKET:I = 0xfe

.field private static final MAX_COLL_CHAIN_LENGTH:I = 0x64

.field private static final MAX_ENTRIES_FOR_REUSE:I = 0x1770

.field private static final MAX_T_SIZE:I = 0x10000

.field static final MIN_HASH_SIZE:I = 0x10

.field private static final MULT:I = 0x21

.field private static final MULT2:I = 0x1003f

.field private static final MULT3:I = 0x1f


# instance fields
.field protected _collCount:I

.field protected _collEnd:I

.field protected _collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

.field private _collListShared:Z

.field protected _count:I

.field protected final _failOnDoS:Z

.field protected _hash:[I

.field protected _hashMask:I

.field private _hashShared:Z

.field protected _intern:Z

.field protected _longestCollisionList:I

.field protected _mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

.field private _namesShared:Z

.field private transient _needRehash:Z

.field protected _overflows:Ljava/util/BitSet;

.field protected final _parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

.field private final _seed:I

.field protected final _tableInfo:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(IZIZ)V
    .registers 7

    .prologue
    const/16 v0, 0x10

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 268
    iput p3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_seed:I

    .line 269
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_intern:Z

    .line 270
    iput-boolean p4, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_failOnDoS:Z

    .line 272
    if-ge p1, v0, :cond_1d

    move p1, v0

    .line 286
    :cond_11
    :goto_11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->initTableInfo(I)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 287
    return-void

    .line 278
    :cond_1d
    add-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p1

    if-eqz v1, :cond_11

    .line 280
    :goto_22
    if-ge v0, p1, :cond_26

    .line 281
    add-int/2addr v0, v0

    goto :goto_22

    :cond_26
    move p1, v0

    .line 283
    goto :goto_11
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;ZIZLcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 296
    iput p3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_seed:I

    .line 297
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_intern:Z

    .line 298
    iput-boolean p4, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_failOnDoS:Z

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 302
    iget v0, p5, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->count:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    .line 303
    iget v0, p5, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainHashMask:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashMask:I

    .line 304
    iget-object v0, p5, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainHash:[I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    .line 305
    iget-object v0, p5, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    .line 306
    iget-object v0, p5, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 307
    iget v0, p5, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collCount:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 308
    iget v0, p5, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collEnd:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 309
    iget v0, p5, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->longestCollisionList:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 313
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashShared:Z

    .line 314
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_namesShared:Z

    .line 315
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 316
    return-void
.end method

.method private _addSymbol(ILcom/fasterxml/jackson/core/sym/Name;)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 819
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashShared:Z

    if-eqz v0, :cond_8

    .line 820
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->unshareMain()V

    .line 823
    :cond_8
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z

    if-eqz v0, :cond_f

    .line 824
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->rehash()V

    .line 827
    :cond_f
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    .line 832
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashMask:I

    and-int v1, p1, v0

    .line 833
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aget-object v0, v0, v1

    if-nez v0, :cond_43

    .line 834
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    shl-int/lit8 v2, p1, 0x8

    aput v2, v0, v1

    .line 835
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_namesShared:Z

    if-eqz v0, :cond_2c

    .line 836
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->unshareNames()V

    .line 838
    :cond_2c
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aput-object p2, v0, v1

    .line 885
    :goto_30
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    array-length v0, v0

    .line 886
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    shr-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_42

    .line 887
    shr-int/lit8 v1, v0, 0x2

    .line 891
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    sub-int/2addr v0, v1

    if-le v2, v0, :cond_a5

    .line 892
    iput-boolean v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 898
    :cond_42
    :goto_42
    return-void

    .line 843
    :cond_43
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z

    if-eqz v0, :cond_4a

    .line 844
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->unshareCollision()V

    .line 846
    :cond_4a
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 847
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    aget v2, v0, v1

    .line 848
    and-int/lit16 v0, v2, 0xff

    .line 849
    if-nez v0, :cond_91

    .line 850
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    const/16 v3, 0xfe

    if-gt v0, v3, :cond_8c

    .line 851
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 852
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 854
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    array-length v3, v3

    if-lt v0, v3, :cond_6e

    .line 855
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->expandCollision()V

    .line 861
    :cond_6e
    :goto_6e
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    and-int/lit16 v2, v2, -0x100

    add-int/lit8 v4, v0, 0x1

    or-int/2addr v2, v4

    aput v2, v3, v1

    .line 867
    :goto_77
    new-instance v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v2, v2, v0

    invoke-direct {v1, p2, v2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;-><init>(Lcom/fasterxml/jackson/core/sym/Name;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)V

    .line 868
    # getter for: Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->length:I
    invoke-static {v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->access$000(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)I

    move-result v2

    .line 869
    const/16 v3, 0x64

    if-le v2, v3, :cond_94

    .line 873
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_handleSpillOverflow(ILcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)V

    goto :goto_30

    .line 858
    :cond_8c
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findBestBucket()I

    move-result v0

    goto :goto_6e

    .line 863
    :cond_91
    add-int/lit8 v0, v0, -0x1

    goto :goto_77

    .line 875
    :cond_94
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aput-object v1, v2, v0

    .line 877
    # getter for: Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->length:I
    invoke-static {v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->access$000(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    goto :goto_30

    .line 893
    :cond_a5
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    if-lt v0, v1, :cond_42

    .line 894
    iput-boolean v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z

    goto :goto_42
.end method

.method private _handleSpillOverflow(ILcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)V
    .registers 5

    .prologue
    .line 902
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_overflows:Ljava/util/BitSet;

    if-nez v0, :cond_22

    .line 903
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_overflows:Ljava/util/BitSet;

    .line 904
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_overflows:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 918
    :goto_10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 919
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    # getter for: Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->length:I
    invoke-static {p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->access$000(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    .line 921
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    .line 922
    return-void

    .line 906
    :cond_22
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_overflows:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 908
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_failOnDoS:Z

    if-eqz v0, :cond_33

    .line 909
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->reportTooManyCollisions(I)V

    .line 912
    :cond_33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_intern:Z

    goto :goto_10

    .line 914
    :cond_37
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_overflows:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_10
.end method

.method protected static calcQuads([B)[I
    .registers 6

    .prologue
    .line 747
    array-length v2, p0

    .line 748
    add-int/lit8 v0, v2, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v3, v0, [I

    .line 749
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, v2, :cond_38

    .line 750
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    .line 752
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_30

    .line 753
    shl-int/lit8 v0, v0, 0x8

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    .line 754
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_30

    .line 755
    shl-int/lit8 v0, v0, 0x8

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    .line 756
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_30

    .line 757
    shl-int/lit8 v0, v0, 0x8

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    .line 761
    :cond_30
    shr-int/lit8 v4, v1, 0x2

    aput v0, v3, v4

    .line 749
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 763
    :cond_38
    return-object v3
.end method

.method private static constructName(ILjava/lang/String;II)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 5

    .prologue
    .line 1101
    if-nez p3, :cond_8

    .line 1102
    new-instance v0, Lcom/fasterxml/jackson/core/sym/Name1;

    invoke-direct {v0, p1, p0, p2}, Lcom/fasterxml/jackson/core/sym/Name1;-><init>(Ljava/lang/String;II)V

    .line 1104
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/fasterxml/jackson/core/sym/Name2;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name2;-><init>(Ljava/lang/String;III)V

    goto :goto_7
.end method

.method private static constructName(ILjava/lang/String;[II)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1108
    const/4 v0, 0x4

    if-ge p3, v0, :cond_8

    .line 1109
    packed-switch p3, :pswitch_data_2e

    .line 1119
    :cond_8
    invoke-static {p1, p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/NameN;->construct(Ljava/lang/String;I[II)Lcom/fasterxml/jackson/core/sym/NameN;

    move-result-object v0

    :goto_c
    return-object v0

    .line 1111
    :pswitch_d
    new-instance v0, Lcom/fasterxml/jackson/core/sym/Name1;

    aget v1, p2, v1

    invoke-direct {v0, p1, p0, v1}, Lcom/fasterxml/jackson/core/sym/Name1;-><init>(Ljava/lang/String;II)V

    goto :goto_c

    .line 1113
    :pswitch_15
    new-instance v0, Lcom/fasterxml/jackson/core/sym/Name2;

    aget v1, p2, v1

    aget v2, p2, v2

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/fasterxml/jackson/core/sym/Name2;-><init>(Ljava/lang/String;III)V

    goto :goto_c

    .line 1115
    :pswitch_1f
    new-instance v0, Lcom/fasterxml/jackson/core/sym/Name3;

    aget v3, p2, v1

    aget v4, p2, v2

    const/4 v1, 0x2

    aget v5, p2, v1

    move-object v1, p1

    move v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/sym/Name3;-><init>(Ljava/lang/String;IIII)V

    goto :goto_c

    .line 1109
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_d
        :pswitch_15
        :pswitch_1f
    .end packed-switch
.end method

.method public static createRoot()Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
    .registers 4

    .prologue
    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 350
    long-to-int v2, v0

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    long-to-int v0, v0

    add-int/2addr v0, v2

    or-int/lit8 v0, v0, 0x1

    .line 351
    invoke-static {v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->createRoot(I)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    move-result-object v0

    return-object v0
.end method

.method protected static createRoot(I)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 359
    new-instance v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    const/16 v1, 0x40

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;-><init>(IZIZ)V

    return-object v0
.end method

.method private expandCollision()V
    .registers 3

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1091
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1092
    return-void
.end method

.method private findBestBucket()I
    .registers 7

    .prologue
    .line 1044
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1045
    const v3, 0x7fffffff

    .line 1046
    const/4 v0, -0x1

    .line 1048
    const/4 v1, 0x0

    iget v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    :goto_9
    if-ge v1, v5, :cond_1c

    .line 1049
    aget-object v2, v4, v1

    # getter for: Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->length:I
    invoke-static {v2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->access$000(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)I

    move-result v2

    .line 1050
    if-ge v2, v3, :cond_1e

    .line 1051
    const/4 v0, 0x1

    if-ne v2, v0, :cond_17

    .line 1058
    :goto_16
    return v1

    :cond_17
    move v0, v1

    .line 1048
    :goto_18
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_9

    :cond_1c
    move v1, v0

    .line 1058
    goto :goto_16

    :cond_1e
    move v2, v3

    goto :goto_18
.end method

.method public static getEmptyName()Lcom/fasterxml/jackson/core/sym/Name;
    .registers 1

    .prologue
    .line 491
    invoke-static {}, Lcom/fasterxml/jackson/core/sym/Name1;->getEmptyName()Lcom/fasterxml/jackson/core/sym/Name1;

    move-result-object v0

    return-object v0
.end method

.method private initTableInfo(I)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 323
    new-instance v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    add-int/lit8 v2, p1, -0x1

    new-array v3, p1, [I

    new-array v4, p1, [Lcom/fasterxml/jackson/core/sym/Name;

    const/4 v5, 0x0

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;-><init>(II[I[Lcom/fasterxml/jackson/core/sym/Name;[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;III)V

    return-object v0
.end method

.method private mergeChild(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;)V
    .registers 5

    .prologue
    .line 404
    iget v1, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->count:I

    .line 405
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    .line 411
    iget v2, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->count:I

    if-ne v1, v2, :cond_f

    .line 430
    :goto_e
    return-void

    .line 421
    :cond_f
    const/16 v2, 0x1770

    if-le v1, v2, :cond_19

    .line 427
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->initTableInfo(I)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    move-result-object p1

    .line 429
    :cond_19
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method private nukeSymbols()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1029
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    .line 1030
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    .line 1031
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1032
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1033
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1034
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 1035
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 1036
    return-void
.end method

.method private rehash()V
    .registers 14

    .prologue
    const/4 v1, 0x0

    .line 926
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 928
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_namesShared:Z

    .line 934
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    .line 935
    array-length v3, v0

    .line 936
    add-int v0, v3, v3

    .line 941
    const/high16 v2, 0x10000

    if-le v0, v2, :cond_12

    .line 942
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->nukeSymbols()V

    .line 1022
    :cond_11
    :goto_11
    return-void

    .line 946
    :cond_12
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    .line 947
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashMask:I

    .line 948
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    .line 949
    new-array v0, v0, [Lcom/fasterxml/jackson/core/sym/Name;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    move v2, v1

    move v0, v1

    .line 951
    :goto_22
    if-ge v2, v3, :cond_3e

    .line 952
    aget-object v5, v4, v2

    .line 953
    if-eqz v5, :cond_3b

    .line 954
    add-int/lit8 v0, v0, 0x1

    .line 955
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I

    move-result v6

    .line 956
    iget v7, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashMask:I

    and-int/2addr v7, v6

    .line 957
    iget-object v8, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aput-object v5, v8, v7

    .line 958
    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    shl-int/lit8 v6, v6, 0x8

    aput v6, v5, v7

    .line 951
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 966
    :cond_3e
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 967
    if-nez v5, :cond_45

    .line 968
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    goto :goto_11

    .line 972
    :cond_45
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 973
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 974
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 978
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 979
    array-length v2, v6

    new-array v2, v2, [Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move v4, v1

    move v2, v0

    .line 980
    :goto_54
    if-ge v4, v5, :cond_cf

    .line 981
    aget-object v0, v6, v4

    move-object v12, v0

    move v0, v2

    move-object v2, v12

    :goto_5b
    if-eqz v2, :cond_ca

    .line 982
    add-int/lit8 v3, v0, 0x1

    .line 983
    iget-object v7, v2, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 984
    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I

    move-result v0

    .line 985
    iget v8, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashMask:I

    and-int/2addr v8, v0

    .line 986
    iget-object v9, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    aget v9, v9, v8

    .line 987
    iget-object v10, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aget-object v10, v10, v8

    if-nez v10, :cond_83

    .line 988
    iget-object v9, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    shl-int/lit8 v0, v0, 0x8

    aput v0, v9, v8

    .line 989
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aput-object v7, v0, v8

    move v0, v1

    .line 981
    :goto_7d
    iget-object v1, v2, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move-object v2, v1

    move v1, v0

    move v0, v3

    goto :goto_5b

    .line 991
    :cond_83
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 992
    and-int/lit16 v0, v9, 0xff

    .line 993
    if-nez v0, :cond_c7

    .line 994
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    const/16 v10, 0xfe

    if-gt v0, v10, :cond_c2

    .line 995
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 996
    iget v10, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 998
    iget-object v10, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    array-length v10, v10

    if-lt v0, v10, :cond_a3

    .line 999
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->expandCollision()V

    .line 1005
    :cond_a3
    :goto_a3
    iget-object v10, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    and-int/lit16 v9, v9, -0x100

    add-int/lit8 v11, v0, 0x1

    or-int/2addr v9, v11

    aput v9, v10, v8

    .line 1010
    :goto_ac
    new-instance v8, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iget-object v9, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v9, v9, v0

    invoke-direct {v8, v7, v9}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;-><init>(Lcom/fasterxml/jackson/core/sym/Name;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)V

    .line 1011
    iget-object v7, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aput-object v8, v7, v0

    .line 1012
    # getter for: Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->length:I
    invoke-static {v8}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->access$000(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_7d

    .line 1002
    :cond_c2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findBestBucket()I

    move-result v0

    goto :goto_a3

    .line 1007
    :cond_c7
    add-int/lit8 v0, v0, -0x1

    goto :goto_ac

    .line 980
    :cond_ca
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_54

    .line 1017
    :cond_cf
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    .line 1019
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    if-eq v2, v0, :cond_11

    .line 1020
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Internal error: count after rehash "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; should be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unshareCollision()V
    .registers 3

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1075
    if-nez v0, :cond_e

    .line 1076
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1080
    :goto_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 1081
    return-void

    .line 1078
    :cond_e
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_a
.end method

.method private unshareMain()V
    .registers 3

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    .line 1069
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    .line 1070
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashShared:Z

    .line 1071
    return-void
.end method

.method private unshareNames()V
    .registers 3

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    .line 1085
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/sym/Name;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    .line 1086
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_namesShared:Z

    .line 1087
    return-void
.end method


# virtual methods
.method public addName(Ljava/lang/String;II)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 6

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_intern:Z

    if-eqz v0, :cond_a

    .line 647
    sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 649
    :cond_a
    if-nez p3, :cond_18

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(I)I

    move-result v0

    .line 650
    :goto_10
    invoke-static {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->constructName(ILjava/lang/String;II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v1

    .line 651
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_addSymbol(ILcom/fasterxml/jackson/core/sym/Name;)V

    .line 652
    return-object v1

    .line 649
    :cond_18
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(II)I

    move-result v0

    goto :goto_10
.end method

.method public addName(Ljava/lang/String;[II)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 657
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_intern:Z

    if-eqz v0, :cond_c

    .line 658
    sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 661
    :cond_c
    const/4 v0, 0x3

    if-ge p3, v0, :cond_28

    .line 662
    if-ne p3, v2, :cond_1f

    aget v0, p2, v1

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(I)I

    move-result v0

    .line 666
    :goto_17
    invoke-static {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->constructName(ILjava/lang/String;[II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v1

    .line 667
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_addSymbol(ILcom/fasterxml/jackson/core/sym/Name;)V

    .line 668
    return-object v1

    .line 662
    :cond_1f
    aget v0, p2, v1

    aget v1, p2, v2

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(II)I

    move-result v0

    goto :goto_17

    .line 664
    :cond_28
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash([II)I

    move-result v0

    goto :goto_17
.end method

.method public bucketCount()I
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    array-length v0, v0

    return v0
.end method

.method public calcHash(I)I
    .registers 4

    .prologue
    .line 693
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_seed:I

    xor-int/2addr v0, p1

    .line 694
    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    .line 695
    ushr-int/lit8 v1, v0, 0x9

    xor-int/2addr v0, v1

    .line 696
    return v0
.end method

.method public calcHash(II)I
    .registers 5

    .prologue
    .line 704
    .line 705
    ushr-int/lit8 v0, p1, 0xf

    xor-int/2addr v0, p1

    .line 706
    mul-int/lit8 v1, p2, 0x21

    add-int/2addr v0, v1

    .line 707
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_seed:I

    xor-int/2addr v0, v1

    .line 708
    ushr-int/lit8 v1, v0, 0x7

    add-int/2addr v0, v1

    .line 709
    return v0
.end method

.method public calcHash([II)I
    .registers 6

    .prologue
    const/4 v0, 0x3

    .line 715
    if-ge p2, v0, :cond_9

    .line 716
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 724
    :cond_9
    const/4 v1, 0x0

    aget v1, p1, v1

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_seed:I

    xor-int/2addr v1, v2

    .line 725
    ushr-int/lit8 v2, v1, 0x9

    add-int/2addr v1, v2

    .line 726
    mul-int/lit8 v1, v1, 0x21

    .line 727
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/2addr v1, v2

    .line 728
    const v2, 0x1003f

    mul-int/2addr v1, v2

    .line 729
    ushr-int/lit8 v2, v1, 0xf

    add-int/2addr v1, v2

    .line 730
    const/4 v2, 0x2

    aget v2, p1, v2

    xor-int/2addr v1, v2

    .line 731
    ushr-int/lit8 v2, v1, 0x11

    add-int/2addr v1, v2

    .line 733
    :goto_26
    if-ge v0, p2, :cond_36

    .line 734
    mul-int/lit8 v1, v1, 0x1f

    aget v2, p1, v0

    xor-int/2addr v1, v2

    .line 736
    ushr-int/lit8 v2, v1, 0x3

    add-int/2addr v1, v2

    .line 737
    shl-int/lit8 v2, v1, 0x7

    xor-int/2addr v1, v2

    .line 733
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 740
    :cond_36
    ushr-int/lit8 v0, v1, 0xf

    add-int/2addr v0, v1

    .line 741
    shl-int/lit8 v1, v0, 0x9

    xor-int/2addr v0, v1

    .line 742
    return v0
.end method

.method public collisionCount()I
    .registers 2

    .prologue
    .line 471
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    return v0
.end method

.method public findName(I)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 511
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(I)I

    move-result v2

    .line 512
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashMask:I

    and-int/2addr v1, v2

    .line 513
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    aget v3, v3, v1

    .line 518
    shr-int/lit8 v4, v3, 0x8

    xor-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_22

    .line 520
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aget-object v1, v4, v1

    .line 521
    if-nez v1, :cond_1a

    .line 540
    :cond_19
    :goto_19
    return-object v0

    .line 524
    :cond_1a
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/sym/Name;->equals(I)Z

    move-result v4

    if-eqz v4, :cond_24

    move-object v0, v1

    .line 525
    goto :goto_19

    .line 527
    :cond_22
    if-eqz v3, :cond_19

    .line 531
    :cond_24
    and-int/lit16 v1, v3, 0xff

    .line 532
    if-lez v1, :cond_19

    .line 533
    add-int/lit8 v1, v1, -0x1

    .line 534
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v1, v3, v1

    .line 535
    if-eqz v1, :cond_19

    .line 536
    const/4 v0, 0x0

    invoke-virtual {v1, v2, p1, v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->find(III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_19
.end method

.method public findName(II)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 560
    if-nez p2, :cond_1d

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(I)I

    move-result v0

    .line 561
    :goto_7
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashMask:I

    and-int/2addr v2, v0

    .line 562
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    aget v3, v3, v2

    .line 567
    shr-int/lit8 v4, v3, 0x8

    xor-int/2addr v4, v0

    shl-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_2a

    .line 569
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aget-object v2, v4, v2

    .line 570
    if-nez v2, :cond_22

    move-object v0, v1

    .line 589
    :goto_1c
    return-object v0

    .line 560
    :cond_1d
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(II)I

    move-result v0

    goto :goto_7

    .line 573
    :cond_22
    invoke-virtual {v2, p1, p2}, Lcom/fasterxml/jackson/core/sym/Name;->equals(II)Z

    move-result v4

    if-eqz v4, :cond_2e

    move-object v0, v2

    .line 574
    goto :goto_1c

    .line 576
    :cond_2a
    if-nez v3, :cond_2e

    move-object v0, v1

    .line 577
    goto :goto_1c

    .line 580
    :cond_2e
    and-int/lit16 v2, v3, 0xff

    .line 581
    if-lez v2, :cond_3f

    .line 582
    add-int/lit8 v2, v2, -0x1

    .line 583
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v2, v3, v2

    .line 584
    if-eqz v2, :cond_3f

    .line 585
    invoke-virtual {v2, v0, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->find(III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_1c

    :cond_3f
    move-object v0, v1

    .line 589
    goto :goto_1c
.end method

.method public findName([II)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 611
    const/4 v2, 0x3

    if-ge p2, v2, :cond_13

    .line 612
    aget v1, p1, v0

    const/4 v2, 0x2

    if-ge p2, v2, :cond_f

    :goto_a
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName(II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 635
    :cond_e
    :goto_e
    return-object v0

    .line 612
    :cond_f
    const/4 v0, 0x1

    aget v0, p1, v0

    goto :goto_a

    .line 614
    :cond_13
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash([II)I

    move-result v2

    .line 616
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashMask:I

    and-int/2addr v0, v2

    .line 617
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    aget v3, v3, v0

    .line 618
    shr-int/lit8 v4, v3, 0x8

    xor-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_42

    .line 619
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aget-object v0, v4, v0

    .line 620
    if-eqz v0, :cond_e

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/sym/Name;->equals([II)Z

    move-result v4

    if-nez v4, :cond_e

    .line 627
    :cond_31
    and-int/lit16 v0, v3, 0xff

    .line 628
    if-lez v0, :cond_46

    .line 629
    add-int/lit8 v0, v0, -0x1

    .line 630
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v0, v3, v0

    .line 631
    if-eqz v0, :cond_46

    .line 632
    invoke-virtual {v0, v2, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->find(I[II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_e

    .line 624
    :cond_42
    if-nez v3, :cond_31

    move-object v0, v1

    .line 625
    goto :goto_e

    :cond_46
    move-object v0, v1

    .line 635
    goto :goto_e
.end method

.method public hashSeed()I
    .registers 2

    .prologue
    .line 462
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_seed:I

    return v0
.end method

.method public makeChild(I)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
    .registers 8

    .prologue
    .line 367
    new-instance v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->INTERN_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v2

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_seed:I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->FAIL_ON_SYMBOL_HASH_OVERFLOW:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v4

    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;-><init>(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;ZIZLcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;)V

    return-object v0
.end method

.method public makeChild(ZZ)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 376
    new-instance v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_seed:I

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;-><init>(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;ZIZLcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;)V

    return-object v0
.end method

.method public maxCollisionLength()I
    .registers 2

    .prologue
    .line 481
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    return v0
.end method

.method public maybeDirty()Z
    .registers 2

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashShared:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public release()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 391
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->maybeDirty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 392
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    new-instance v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    invoke-direct {v1, p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;-><init>(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;)V

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->mergeChild(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;)V

    .line 396
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashShared:Z

    .line 397
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_namesShared:Z

    .line 398
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 400
    :cond_1b
    return-void
.end method

.method protected reportTooManyCollisions(I)V
    .registers 5

    .prologue
    .line 1133
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Longest collision chain in symbol table (of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") now exceeds maximum, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -- suspect a DoS attack based on hash collisions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_f

    .line 441
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    iget v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->count:I

    .line 444
    :goto_e
    return v0

    :cond_f
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    goto :goto_e
.end method
