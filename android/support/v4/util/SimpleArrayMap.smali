.class public Landroid/support/v4/util/SimpleArrayMap;
.super Ljava/lang/Object;
.source "SimpleArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static b:[Ljava/lang/Object;

.field static c:I

.field static d:[Ljava/lang/Object;

.field static e:I


# instance fields
.field f:[I

.field g:[Ljava/lang/Object;

.field h:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->a:[I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    .line 210
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->c:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    .line 212
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    if-nez p1, :cond_11

    .line 219
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->a:[I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    .line 220
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->c:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    .line 224
    :goto_d
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    .line 225
    return-void

    .line 222
    :cond_11
    invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->e(I)V

    goto :goto_d
.end method

.method private static a([I[Ljava/lang/Object;I)V
    .registers 7

    .prologue
    const/16 v2, 0xa

    const/4 v3, 0x2

    .line 173
    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_30

    .line 174
    const-class v1, Landroid/support/v4/util/ArrayMap;

    monitor-enter v1

    .line 175
    :try_start_b
    sget v0, Landroid/support/v4/util/SimpleArrayMap;->e:I

    if-ge v0, v2, :cond_2b

    .line 176
    const/4 v0, 0x0

    sget-object v2, Landroid/support/v4/util/SimpleArrayMap;->d:[Ljava/lang/Object;

    aput-object v2, p1, v0

    .line 177
    const/4 v0, 0x1

    aput-object p0, p1, v0

    .line 178
    shl-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_1b
    if-lt v0, v3, :cond_23

    .line 179
    const/4 v2, 0x0

    aput-object v2, p1, v0

    .line 178
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 181
    :cond_23
    sput-object p1, Landroid/support/v4/util/SimpleArrayMap;->d:[Ljava/lang/Object;

    .line 182
    sget v0, Landroid/support/v4/util/SimpleArrayMap;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/v4/util/SimpleArrayMap;->e:I

    .line 186
    :cond_2b
    monitor-exit v1

    .line 202
    :cond_2c
    :goto_2c
    return-void

    .line 186
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_2d

    throw v0

    .line 187
    :cond_30
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    .line 188
    const-class v1, Landroid/support/v4/util/ArrayMap;

    monitor-enter v1

    .line 189
    :try_start_37
    sget v0, Landroid/support/v4/util/SimpleArrayMap;->c:I

    if-ge v0, v2, :cond_57

    .line 190
    const/4 v0, 0x0

    sget-object v2, Landroid/support/v4/util/SimpleArrayMap;->b:[Ljava/lang/Object;

    aput-object v2, p1, v0

    .line 191
    const/4 v0, 0x1

    aput-object p0, p1, v0

    .line 192
    shl-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_47
    if-lt v0, v3, :cond_4f

    .line 193
    const/4 v2, 0x0

    aput-object v2, p1, v0

    .line 192
    add-int/lit8 v0, v0, -0x1

    goto :goto_47

    .line 195
    :cond_4f
    sput-object p1, Landroid/support/v4/util/SimpleArrayMap;->b:[Ljava/lang/Object;

    .line 196
    sget v0, Landroid/support/v4/util/SimpleArrayMap;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/v4/util/SimpleArrayMap;->c:I

    .line 200
    :cond_57
    monitor-exit v1

    goto :goto_2c

    :catchall_59
    move-exception v0

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_37 .. :try_end_5b} :catchall_59

    throw v0
.end method

.method private e(I)V
    .registers 7

    .prologue
    .line 138
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3f

    .line 139
    const-class v1, Landroid/support/v4/util/ArrayMap;

    monitor-enter v1

    .line 140
    :try_start_7
    sget-object v0, Landroid/support/v4/util/SimpleArrayMap;->d:[Ljava/lang/Object;

    if-eqz v0, :cond_30

    .line 141
    sget-object v2, Landroid/support/v4/util/SimpleArrayMap;->d:[Ljava/lang/Object;

    .line 142
    iput-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    .line 143
    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/util/SimpleArrayMap;->d:[Ljava/lang/Object;

    .line 144
    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    .line 145
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    .line 146
    sget v0, Landroid/support/v4/util/SimpleArrayMap;->e:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/support/v4/util/SimpleArrayMap;->e:I

    .line 149
    monitor-exit v1

    .line 170
    :goto_2f
    return-void

    .line 151
    :cond_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_3c

    .line 168
    :cond_31
    :goto_31
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    .line 169
    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    goto :goto_2f

    .line 151
    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0

    .line 152
    :cond_3f
    const/4 v0, 0x4

    if-ne p1, v0, :cond_31

    .line 153
    const-class v1, Landroid/support/v4/util/ArrayMap;

    monitor-enter v1

    .line 154
    :try_start_45
    sget-object v0, Landroid/support/v4/util/SimpleArrayMap;->b:[Ljava/lang/Object;

    if-eqz v0, :cond_71

    .line 155
    sget-object v2, Landroid/support/v4/util/SimpleArrayMap;->b:[Ljava/lang/Object;

    .line 156
    iput-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    .line 157
    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/util/SimpleArrayMap;->b:[Ljava/lang/Object;

    .line 158
    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    .line 159
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    .line 160
    sget v0, Landroid/support/v4/util/SimpleArrayMap;->c:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/support/v4/util/SimpleArrayMap;->c:I

    .line 163
    monitor-exit v1

    goto :goto_2f

    .line 165
    :catchall_6e
    move-exception v0

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_45 .. :try_end_70} :catchall_6e

    throw v0

    :cond_71
    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_6e

    goto :goto_31
.end method


# virtual methods
.method a()I
    .registers 6

    .prologue
    .line 100
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    .line 103
    if-nez v2, :cond_6

    .line 104
    const/4 v0, -0x1

    .line 134
    :cond_5
    :goto_5
    return v0

    .line 107
    :cond_6
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/support/v4/util/ContainerHelpers;->a([III)I

    move-result v0

    .line 110
    if-ltz v0, :cond_5

    .line 115
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    if-eqz v1, :cond_5

    .line 121
    add-int/lit8 v1, v0, 0x1

    :goto_19
    if-ge v1, v2, :cond_2e

    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    aget v3, v3, v1

    if-nez v3, :cond_2e

    .line 122
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_2b

    move v0, v1

    goto :goto_5

    .line 121
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 126
    :cond_2e
    add-int/lit8 v0, v0, -0x1

    :goto_30
    if-ltz v0, :cond_43

    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    aget v2, v2, v0

    if-nez v2, :cond_43

    .line 127
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_5

    .line 126
    add-int/lit8 v0, v0, -0x1

    goto :goto_30

    .line 134
    :cond_43
    xor-int/lit8 v0, v1, -0x1

    goto :goto_5
.end method

.method public a(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 283
    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->a()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->a(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_6
.end method

.method a(Ljava/lang/Object;I)I
    .registers 8

    .prologue
    .line 62
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    .line 65
    if-nez v2, :cond_6

    .line 66
    const/4 v0, -0x1

    .line 96
    :cond_5
    :goto_5
    return v0

    .line 69
    :cond_6
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    invoke-static {v0, v2, p2}, Landroid/support/v4/util/ContainerHelpers;->a([III)I

    move-result v0

    .line 72
    if-ltz v0, :cond_5

    .line 77
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 83
    add-int/lit8 v1, v0, 0x1

    :goto_1c
    if-ge v1, v2, :cond_35

    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    aget v3, v3, v1

    if-ne v3, p2, :cond_35

    .line 84
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    move v0, v1

    goto :goto_5

    .line 83
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 88
    :cond_35
    add-int/lit8 v0, v0, -0x1

    :goto_37
    if-ltz v0, :cond_4e

    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    aget v2, v2, v0

    if-ne v2, p2, :cond_4e

    .line 89
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 88
    add-int/lit8 v0, v0, -0x1

    goto :goto_37

    .line 96
    :cond_4e
    xor-int/lit8 v0, v1, -0x1

    goto :goto_5
.end method

.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 352
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 353
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 354
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    aput-object p2, v2, v0

    .line 355
    return-object v1
.end method

.method public a(I)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 254
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    array-length v0, v0

    if-ge v0, p1, :cond_26

    .line 255
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    .line 256
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    .line 257
    invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->e(I)V

    .line 258
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    if-lez v2, :cond_21

    .line 259
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    :cond_21
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->a([I[Ljava/lang/Object;I)V

    .line 264
    :cond_26
    return-void
.end method

.method b(Ljava/lang/Object;)I
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 287
    iget v1, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    mul-int/lit8 v1, v1, 0x2

    .line 288
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    .line 289
    if-nez p1, :cond_17

    .line 290
    :goto_9
    if-ge v0, v1, :cond_24

    .line 291
    aget-object v3, v2, v0

    if-nez v3, :cond_12

    .line 292
    shr-int/lit8 v0, v0, 0x1

    .line 302
    :goto_11
    return v0

    .line 290
    :cond_12
    add-int/lit8 v0, v0, 0x2

    goto :goto_9

    .line 296
    :cond_15
    add-int/lit8 v0, v0, 0x2

    :cond_17
    if-ge v0, v1, :cond_24

    .line 297
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 298
    shr-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 302
    :cond_24
    const/4 v0, -0x1

    goto :goto_11
.end method

.method public b(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public c(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 241
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    if-eqz v0, :cond_18

    .line 242
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->a([I[Ljava/lang/Object;I)V

    .line 243
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->a:[I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    .line 244
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->c:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    .line 247
    :cond_18
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->a(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->b(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public d(I)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v0, 0x8

    const/4 v5, 0x0

    .line 465
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    shl-int/lit8 v2, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    .line 466
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_25

    .line 469
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    invoke-static {v0, v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->a([I[Ljava/lang/Object;I)V

    .line 470
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->a:[I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    .line 471
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->c:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    .line 472
    iput v5, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    .line 512
    :cond_24
    :goto_24
    return-object v1

    .line 474
    :cond_25
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    array-length v2, v2

    if-le v2, v0, :cond_78

    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    array-length v3, v3

    div-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_78

    .line 478
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    if-le v2, v0, :cond_3e

    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 482
    :cond_3e
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    .line 483
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    .line 484
    invoke-direct {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->e(I)V

    .line 486
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    .line 487
    if-lez p1, :cond_59

    .line 489
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    invoke-static {v2, v5, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    shl-int/lit8 v4, p1, 0x1

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    :cond_59
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    if-ge p1, v0, :cond_24

    .line 495
    add-int/lit8 v0, p1, 0x1

    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    sub-int/2addr v5, p1

    invoke-static {v2, v0, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    add-int/lit8 v0, p1, 0x1

    shl-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    shl-int/lit8 v4, p1, 0x1

    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    sub-int/2addr v5, p1

    shl-int/lit8 v5, v5, 0x1

    invoke-static {v3, v0, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_24

    .line 500
    :cond_78
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    .line 501
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    if-ge p1, v0, :cond_a0

    .line 504
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    sub-int/2addr v4, p1

    invoke-static {v0, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    shl-int/lit8 v4, p1, 0x1

    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    sub-int/2addr v5, p1

    shl-int/lit8 v5, v5, 0x1

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    :cond_a0
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    shl-int/lit8 v2, v2, 0x1

    aput-object v6, v0, v2

    .line 509
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    aput-object v6, v0, v2

    goto/16 :goto_24
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 532
    if-ne p0, p1, :cond_5

    .line 561
    :cond_4
    :goto_4
    return v0

    .line 535
    :cond_5
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_45

    .line 536
    check-cast p1, Ljava/util/Map;

    .line 537
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_17

    move v0, v1

    .line 538
    goto :goto_4

    :cond_17
    move v2, v1

    .line 542
    :goto_18
    :try_start_18
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    if-ge v2, v3, :cond_4

    .line 543
    invoke-virtual {p0, v2}, Landroid/support/v4/util/SimpleArrayMap;->b(I)Ljava/lang/Object;

    move-result-object v3

    .line 544
    invoke-virtual {p0, v2}, Landroid/support/v4/util/SimpleArrayMap;->c(I)Ljava/lang/Object;

    move-result-object v4

    .line 545
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 546
    if-nez v4, :cond_34

    .line 547
    if-nez v5, :cond_32

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    :cond_32
    move v0, v1

    .line 548
    goto :goto_4

    .line 550
    :cond_34
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_37} :catch_3f
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_37} :catch_42

    move-result v3

    if-nez v3, :cond_3c

    move v0, v1

    .line 551
    goto :goto_4

    .line 542
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 554
    :catch_3f
    move-exception v0

    move v0, v1

    .line 555
    goto :goto_4

    .line 556
    :catch_42
    move-exception v0

    move v0, v1

    .line 557
    goto :goto_4

    :cond_45
    move v0, v1

    .line 561
    goto :goto_4
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 324
    if-ltz v0, :cond_f

    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 569
    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    .line 570
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    .line 572
    const/4 v0, 0x1

    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    move v2, v0

    move v3, v1

    move v4, v1

    :goto_b
    if-ge v3, v7, :cond_21

    .line 573
    aget-object v0, v6, v2

    .line 574
    aget v8, v5, v3

    if-nez v0, :cond_1c

    move v0, v1

    :goto_14
    xor-int/2addr v0, v8

    add-int/2addr v4, v0

    .line 572
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_b

    .line 574
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_14

    .line 576
    :cond_21
    return v4
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 362
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 376
    if-nez p1, :cond_1a

    .line 378
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->a()I

    move-result v2

    move v3, v4

    .line 383
    :goto_b
    if-ltz v2, :cond_23

    .line 384
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v1, v0, 0x1

    .line 385
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 386
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 421
    :goto_19
    return-object v0

    .line 380
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 381
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/util/SimpleArrayMap;->a(Ljava/lang/Object;I)I

    move-result v2

    goto :goto_b

    .line 390
    :cond_23
    xor-int/lit8 v2, v2, -0x1

    .line 391
    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    array-length v6, v6

    if-lt v5, v6, :cond_54

    .line 392
    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    if-lt v5, v0, :cond_90

    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    iget v1, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 397
    :cond_37
    :goto_37
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    .line 398
    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    .line 399
    invoke-direct {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->e(I)V

    .line 401
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    array-length v0, v0

    if-lez v0, :cond_4f

    .line 403
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    array-length v6, v1

    invoke-static {v1, v4, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    array-length v6, v5

    invoke-static {v5, v4, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    :cond_4f
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    invoke-static {v1, v5, v0}, Landroid/support/v4/util/SimpleArrayMap;->a([I[Ljava/lang/Object;I)V

    .line 410
    :cond_54
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    if-ge v2, v0, :cond_76

    .line 413
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    sub-int/2addr v5, v2

    invoke-static {v0, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    shl-int/lit8 v5, v5, 0x1

    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    sub-int/2addr v6, v2

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v0, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    :cond_76
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->f:[I

    aput v3, v0, v2

    .line 418
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    aput-object p1, v0, v1

    .line 419
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    .line 420
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    .line 421
    const/4 v0, 0x0

    goto :goto_19

    .line 392
    :cond_90
    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    if-ge v5, v1, :cond_37

    move v0, v1

    goto :goto_37
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 452
    if-ltz v0, :cond_b

    .line 453
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->d(I)Ljava/lang/Object;

    move-result-object v0

    .line 456
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public size()I
    .registers 2

    .prologue
    .line 519
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 588
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 589
    const-string/jumbo v0, "{}"

    .line 613
    :goto_9
    return-object v0

    .line 592
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    mul-int/lit8 v0, v0, 0x1c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 593
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 594
    const/4 v0, 0x0

    :goto_19
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->h:I

    if-ge v0, v2, :cond_4d

    .line 595
    if-lez v0, :cond_25

    .line 596
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    :cond_25
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->b(I)Ljava/lang/Object;

    move-result-object v2

    .line 599
    if-eq v2, p0, :cond_3f

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 604
    :goto_2e
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->c(I)Ljava/lang/Object;

    move-result-object v2

    .line 606
    if-eq v2, p0, :cond_46

    .line 607
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 594
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 602
    :cond_3f
    const-string/jumbo v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 609
    :cond_46
    const-string/jumbo v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 612
    :cond_4d
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method
