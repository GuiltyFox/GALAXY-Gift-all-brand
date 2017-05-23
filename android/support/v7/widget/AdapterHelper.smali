.class Landroid/support/v7/widget/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Landroid/support/v7/widget/OpReorderer$Callback;


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/support/v7/widget/AdapterHelper$Callback;

.field d:Ljava/lang/Runnable;

.field final e:Z

.field final f:Landroid/support/v7/widget/OpReorderer;

.field private g:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private h:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/AdapterHelper$Callback;)V
    .registers 3

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AdapterHelper;-><init>(Landroid/support/v7/widget/AdapterHelper$Callback;Z)V

    .line 74
    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/AdapterHelper$Callback;Z)V
    .registers 5

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->g:Landroid/support/v4/util/Pools$Pool;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->a:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/AdapterHelper;->h:I

    .line 77
    iput-object p1, p0, Landroid/support/v7/widget/AdapterHelper;->c:Landroid/support/v7/widget/AdapterHelper$Callback;

    .line 78
    iput-boolean p2, p0, Landroid/support/v7/widget/AdapterHelper;->e:Z

    .line 79
    new-instance v0, Landroid/support/v7/widget/OpReorderer;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/OpReorderer;-><init>(Landroid/support/v7/widget/OpReorderer$Callback;)V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->f:Landroid/support/v7/widget/OpReorderer;

    .line 80
    return-void
.end method

.method private b(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 2

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->g(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 132
    return-void
.end method

.method private c(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 135
    iget v7, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    .line 137
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    add-int v4, v0, v3

    .line 138
    const/4 v5, -0x1

    .line 139
    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    move v6, v2

    :goto_10
    if-ge v3, v4, :cond_4b

    .line 141
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->c:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v0, v3}, Landroid/support/v7/widget/AdapterHelper$Callback;->a(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 142
    if-nez v0, :cond_20

    invoke-direct {p0, v3}, Landroid/support/v7/widget/AdapterHelper;->d(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 149
    :cond_20
    if-nez v5, :cond_62

    .line 152
    invoke-virtual {p0, v8, v7, v6, v9}, Landroid/support/v7/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 153
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->e(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    move v0, v1

    :goto_2a
    move v5, v1

    .line 169
    :goto_2b
    if-eqz v0, :cond_44

    .line 170
    sub-int v0, v3, v6

    .line 171
    sub-int v3, v4, v6

    move v4, v1

    .line 139
    :goto_32
    add-int/lit8 v0, v0, 0x1

    move v6, v4

    move v4, v3

    move v3, v0

    goto :goto_10

    .line 160
    :cond_38
    if-ne v5, v1, :cond_60

    .line 163
    invoke-virtual {p0, v8, v7, v6, v9}, Landroid/support/v7/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 164
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->g(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    move v0, v1

    :goto_42
    move v5, v2

    .line 167
    goto :goto_2b

    .line 174
    :cond_44
    add-int/lit8 v0, v6, 0x1

    move v10, v3

    move v3, v4

    move v4, v0

    move v0, v10

    goto :goto_32

    .line 177
    :cond_4b
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    if-eq v6, v0, :cond_56

    .line 178
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->a(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 179
    invoke-virtual {p0, v8, v7, v6, v9}, Landroid/support/v7/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    .line 181
    :cond_56
    if-nez v5, :cond_5c

    .line 182
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->e(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 186
    :goto_5b
    return-void

    .line 184
    :cond_5c
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->g(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_5b

    :cond_60
    move v0, v2

    goto :goto_42

    :cond_62
    move v0, v2

    goto :goto_2a
.end method

.method private d(II)I
    .registers 11

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 331
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 332
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v1, p1

    :goto_e
    if-ltz v4, :cond_a9

    .line 333
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 334
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    if-ne v2, v7, :cond_83

    .line 336
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    if-ge v2, v3, :cond_3d

    .line 337
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    .line 338
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    .line 343
    :goto_26
    if-lt v1, v3, :cond_5f

    if-gt v1, v2, :cond_5f

    .line 345
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    if-ne v3, v2, :cond_4b

    .line 346
    if-ne p2, v5, :cond_42

    .line 347
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    .line 352
    :cond_36
    :goto_36
    add-int/lit8 v0, v1, 0x1

    :goto_38
    move v1, v0

    .line 332
    :cond_39
    :goto_39
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_e

    .line 340
    :cond_3d
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    .line 341
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    goto :goto_26

    .line 348
    :cond_42
    if-ne p2, v6, :cond_36

    .line 349
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    goto :goto_36

    .line 354
    :cond_4b
    if-ne p2, v5, :cond_56

    .line 355
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    .line 360
    :cond_53
    :goto_53
    add-int/lit8 v0, v1, -0x1

    goto :goto_38

    .line 356
    :cond_56
    if-ne p2, v6, :cond_53

    .line 357
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    goto :goto_53

    .line 362
    :cond_5f
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    if-ge v1, v2, :cond_81

    .line 364
    if-ne p2, v5, :cond_73

    .line 365
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    .line 366
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    move v0, v1

    goto :goto_38

    .line 367
    :cond_73
    if-ne p2, v6, :cond_81

    .line 368
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    .line 369
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    :cond_81
    move v0, v1

    goto :goto_38

    .line 373
    :cond_83
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    if-gt v2, v1, :cond_97

    .line 374
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    if-ne v2, v5, :cond_8f

    .line 375
    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    sub-int/2addr v1, v0

    goto :goto_39

    .line 376
    :cond_8f
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    if-ne v2, v6, :cond_39

    .line 377
    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    add-int/2addr v1, v0

    goto :goto_39

    .line 380
    :cond_97
    if-ne p2, v5, :cond_a0

    .line 381
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    goto :goto_39

    .line 382
    :cond_a0
    if-ne p2, v6, :cond_39

    .line 383
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    goto :goto_39

    .line 396
    :cond_a9
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_b2
    if-ltz v2, :cond_e3

    .line 397
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 398
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    if-ne v3, v7, :cond_d6

    .line 399
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    if-eq v3, v4, :cond_ca

    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    if-gez v3, :cond_d2

    .line 400
    :cond_ca
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 401
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->a(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 396
    :cond_d2
    :goto_d2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_b2

    .line 403
    :cond_d6
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    if-gtz v3, :cond_d2

    .line 404
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 405
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->a(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_d2

    .line 408
    :cond_e3
    return v1
.end method

.method private d(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 12

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x4

    const/4 v1, 0x0

    .line 189
    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    .line 191
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    add-int v6, v0, v3

    .line 192
    const/4 v0, -0x1

    .line 193
    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    move v5, v0

    move v0, v1

    :goto_10
    if-ge v3, v6, :cond_4a

    .line 194
    iget-object v7, p0, Landroid/support/v7/widget/AdapterHelper;->c:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v7, v3}, Landroid/support/v7/widget/AdapterHelper$Callback;->a(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 195
    if-nez v7, :cond_20

    invoke-direct {p0, v3}, Landroid/support/v7/widget/AdapterHelper;->d(I)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 196
    :cond_20
    if-nez v5, :cond_2d

    .line 197
    iget-object v5, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->c:Ljava/lang/Object;

    invoke-virtual {p0, v8, v2, v0, v5}, Landroid/support/v7/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 199
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->e(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    move v0, v1

    move v2, v3

    :cond_2d
    move v5, v2

    move v2, v0

    move v0, v4

    .line 214
    :goto_30
    add-int/lit8 v2, v2, 0x1

    .line 193
    add-int/lit8 v3, v3, 0x1

    move v9, v0

    move v0, v2

    move v2, v5

    move v5, v9

    goto :goto_10

    .line 205
    :cond_39
    if-ne v5, v4, :cond_46

    .line 206
    iget-object v5, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->c:Ljava/lang/Object;

    invoke-virtual {p0, v8, v2, v0, v5}, Landroid/support/v7/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 208
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->g(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    move v0, v1

    move v2, v3

    :cond_46
    move v5, v2

    move v2, v0

    move v0, v1

    .line 212
    goto :goto_30

    .line 216
    :cond_4a
    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    if-eq v0, v1, :cond_57

    .line 217
    iget-object v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->c:Ljava/lang/Object;

    .line 218
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->a(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 219
    invoke-virtual {p0, v8, v2, v0, v1}, Landroid/support/v7/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    .line 221
    :cond_57
    if-nez v5, :cond_5d

    .line 222
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->e(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 226
    :goto_5c
    return-void

    .line 224
    :cond_5d
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->g(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_5c
.end method

.method private d(I)Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 412
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 413
    :goto_9
    if-ge v3, v4, :cond_43

    .line 414
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 415
    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_25

    .line 416
    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v0, v5}, Landroid/support/v7/widget/AdapterHelper;->a(II)I

    move-result v0

    if-ne v0, p1, :cond_3f

    move v0, v1

    .line 429
    :goto_24
    return v0

    .line 419
    :cond_25
    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    if-ne v5, v1, :cond_3f

    .line 421
    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    iget v6, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    add-int/2addr v5, v6

    .line 422
    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    :goto_30
    if-ge v0, v5, :cond_3f

    .line 423
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v0, v6}, Landroid/support/v7/widget/AdapterHelper;->a(II)I

    move-result v6

    if-ne v6, p1, :cond_3c

    move v0, v1

    .line 424
    goto :goto_24

    .line 422
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 413
    :cond_3f
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_9

    :cond_43
    move v0, v2

    .line 429
    goto :goto_24
.end method

.method private e(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 232
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    if-eq v0, v1, :cond_c

    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_15

    .line 233
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "should not dispatch add or move for pre layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_15
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/AdapterHelper;->d(II)I

    move-result v4

    .line 251
    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    .line 253
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    packed-switch v0, :pswitch_data_9a

    .line 261
    :pswitch_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "op should be remove or update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3e
    move v0, v1

    :goto_3f
    move v5, v1

    move v6, v4

    move v4, v3

    move v3, v1

    .line 263
    :goto_43
    iget v7, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    if-ge v3, v7, :cond_86

    .line 264
    iget v7, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    mul-int v8, v0, v3

    add-int/2addr v7, v8

    .line 265
    iget v8, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    invoke-direct {p0, v7, v8}, Landroid/support/v7/widget/AdapterHelper;->d(II)I

    move-result v8

    .line 270
    iget v7, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    packed-switch v7, :pswitch_data_a4

    :pswitch_57
    move v7, v2

    .line 278
    :goto_58
    if-eqz v7, :cond_6f

    .line 279
    add-int/lit8 v5, v5, 0x1

    .line 263
    :goto_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :pswitch_5f
    move v0, v2

    .line 259
    goto :goto_3f

    .line 272
    :pswitch_61
    add-int/lit8 v7, v6, 0x1

    if-ne v8, v7, :cond_67

    move v7, v1

    goto :goto_58

    :cond_67
    move v7, v2

    goto :goto_58

    .line 275
    :pswitch_69
    if-ne v8, v6, :cond_6d

    move v7, v1

    goto :goto_58

    :cond_6d
    move v7, v2

    goto :goto_58

    .line 282
    :cond_6f
    iget v7, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    iget-object v9, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->c:Ljava/lang/Object;

    invoke-virtual {p0, v7, v6, v5, v9}, Landroid/support/v7/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v6

    .line 286
    invoke-virtual {p0, v6, v4}, Landroid/support/v7/widget/AdapterHelper;->a(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V

    .line 287
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/AdapterHelper;->a(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 288
    iget v6, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_83

    .line 289
    add-int/2addr v4, v5

    :cond_83
    move v5, v1

    move v6, v8

    .line 292
    goto :goto_5c

    .line 295
    :cond_86
    iget-object v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->c:Ljava/lang/Object;

    .line 296
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->a(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 297
    if-lez v5, :cond_99

    .line 298
    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    invoke-virtual {p0, v1, v6, v5, v0}, Landroid/support/v7/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 302
    invoke-virtual {p0, v0, v4}, Landroid/support/v7/widget/AdapterHelper;->a(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V

    .line 303
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->a(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 313
    :cond_99
    return-void

    .line 253
    :pswitch_data_9a
    .packed-switch 0x2
        :pswitch_5f
        :pswitch_24
        :pswitch_3e
    .end packed-switch

    .line 270
    :pswitch_data_a4
    .packed-switch 0x2
        :pswitch_69
        :pswitch_57
        :pswitch_61
    .end packed-switch
.end method

.method private f(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 2

    .prologue
    .line 433
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->g(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 434
    return-void
.end method

.method private g(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 6

    .prologue
    .line 440
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    packed-switch v0, :pswitch_data_4e

    .line 456
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :pswitch_24
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->c:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->c(II)V

    .line 458
    :goto_2d
    return-void

    .line 446
    :pswitch_2e
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->c:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->d(II)V

    goto :goto_2d

    .line 449
    :pswitch_38
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->c:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->b(II)V

    goto :goto_2d

    .line 453
    :pswitch_42
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->c:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    iget-object v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v7/widget/AdapterHelper$Callback;->a(IILjava/lang/Object;)V

    goto :goto_2d

    .line 441
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_38
        :pswitch_a
        :pswitch_42
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_2e
    .end packed-switch
.end method


# virtual methods
.method a(II)I
    .registers 8

    .prologue
    .line 473
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, p1

    .line 474
    :goto_7
    if-ge p2, v2, :cond_3e

    .line 475
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 476
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2d

    .line 477
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    if-ne v3, v1, :cond_20

    .line 478
    iget v1, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    .line 474
    :cond_1d
    :goto_1d
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 480
    :cond_20
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    if-ge v3, v1, :cond_26

    .line 481
    add-int/lit8 v1, v1, -0x1

    .line 483
    :cond_26
    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    if-gt v0, v1, :cond_1d

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 487
    :cond_2d
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    if-gt v3, v1, :cond_1d

    .line 488
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_43

    .line 489
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_3f

    .line 490
    const/4 v1, -0x1

    .line 498
    :cond_3e
    return v1

    .line 492
    :cond_3f
    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    sub-int/2addr v1, v0

    goto :goto_1d

    .line 493
    :cond_43
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    .line 494
    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    add-int/2addr v1, v0

    goto :goto_1d
.end method

.method public a(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .registers 6

    .prologue
    .line 728
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->g:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 729
    if-nez v0, :cond_10

    .line 730
    new-instance v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/AdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    .line 737
    :goto_f
    return-object v0

    .line 732
    :cond_10
    iput p1, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    .line 733
    iput p2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    .line 734
    iput p3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    .line 735
    iput-object p4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->c:Ljava/lang/Object;

    goto :goto_f
.end method

.method a()V
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->a(Ljava/util/List;)V

    .line 89
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->a(Ljava/util/List;)V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/AdapterHelper;->h:I

    .line 91
    return-void
.end method

.method public a(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 3

    .prologue
    .line 742
    iget-boolean v0, p0, Landroid/support/v7/widget/AdapterHelper;->e:Z

    if-nez v0, :cond_c

    .line 743
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->c:Ljava/lang/Object;

    .line 744
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->g:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/support/v4/util/Pools$Pool;->a(Ljava/lang/Object;)Z

    .line 746
    :cond_c
    return-void
.end method

.method a(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V
    .registers 6

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->c:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/AdapterHelper$Callback;->a(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 317
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    packed-switch v0, :pswitch_data_26

    .line 325
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :pswitch_13
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->c:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    invoke-interface {v0, p2, v1}, Landroid/support/v7/widget/AdapterHelper$Callback;->a(II)V

    .line 328
    :goto_1a
    return-void

    .line 322
    :pswitch_1b
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->c:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    iget-object v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->c:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->a(IILjava/lang/Object;)V

    goto :goto_1a

    .line 317
    nop

    :pswitch_data_26
    .packed-switch 0x2
        :pswitch_13
        :pswitch_a
        :pswitch_1b
    .end packed-switch
.end method

.method a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 749
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 750
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_15

    .line 751
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->a(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 750
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 753
    :cond_15
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 754
    return-void
.end method

.method a(I)Z
    .registers 3

    .prologue
    .line 465
    iget v0, p0, Landroid/support/v7/widget/AdapterHelper;->h:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method a(III)Z
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 541
    if-ne p1, p2, :cond_5

    .line 549
    :goto_4
    return v1

    .line 544
    :cond_5
    if-eq p3, v0, :cond_10

    .line 545
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Moving more than 1 item is not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_10
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->a:Ljava/util/ArrayList;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, p2, v4}, Landroid/support/v7/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    iget v2, p0, Landroid/support/v7/widget/AdapterHelper;->h:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Landroid/support/v7/widget/AdapterHelper;->h:I

    .line 549
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_2c

    :goto_2a
    move v1, v0

    goto :goto_4

    :cond_2c
    move v0, v1

    goto :goto_2a
.end method

.method a(IILjava/lang/Object;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 505
    if-ge p2, v0, :cond_5

    .line 510
    :goto_4
    return v1

    .line 508
    :cond_5
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->a:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {p0, v3, p1, p2, p3}, Landroid/support/v7/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    iget v2, p0, Landroid/support/v7/widget/AdapterHelper;->h:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Landroid/support/v7/widget/AdapterHelper;->h:I

    .line 510
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_1f

    :goto_1d
    move v1, v0

    goto :goto_4

    :cond_1f
    move v0, v1

    goto :goto_1d
.end method

.method b(I)I
    .registers 3

    .prologue
    .line 469
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/AdapterHelper;->a(II)I

    move-result v0

    return v0
.end method

.method b()V
    .registers 5

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->f:Landroid/support/v7/widget/OpReorderer;

    iget-object v1, p0, Landroid/support/v7/widget/AdapterHelper;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/OpReorderer;->a(Ljava/util/List;)V

    .line 95
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 96
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-ge v1, v2, :cond_3b

    .line 97
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 98
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    packed-switch v3, :pswitch_data_42

    .line 112
    :goto_1e
    :pswitch_1e
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_27

    .line 113
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 96
    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 100
    :pswitch_2b
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->f(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1e

    .line 103
    :pswitch_2f
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->c(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1e

    .line 106
    :pswitch_33
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->d(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1e

    .line 109
    :pswitch_37
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->b(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1e

    .line 116
    :cond_3b
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 117
    return-void

    .line 98
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2f
        :pswitch_1e
        :pswitch_33
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_37
    .end packed-switch
.end method

.method b(II)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 517
    if-ge p2, v0, :cond_5

    .line 522
    :goto_4
    return v1

    .line 520
    :cond_5
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/support/v7/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    iget v2, p0, Landroid/support/v7/widget/AdapterHelper;->h:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/v7/widget/AdapterHelper;->h:I

    .line 522
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_1f

    :goto_1d
    move v1, v0

    goto :goto_4

    :cond_1f
    move v0, v1

    goto :goto_1d
.end method

.method public c(I)I
    .registers 8

    .prologue
    .line 589
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 590
    const/4 v0, 0x0

    move v2, v0

    move v1, p1

    :goto_9
    if-ge v2, v3, :cond_30

    .line 591
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 592
    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    sparse-switch v4, :sswitch_data_4a

    .line 590
    :cond_18
    :goto_18
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    .line 594
    :sswitch_1c
    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    if-gt v4, v1, :cond_18

    .line 595
    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    add-int/2addr v1, v0

    goto :goto_18

    .line 599
    :sswitch_24
    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    if-gt v4, v1, :cond_18

    .line 600
    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    add-int/2addr v4, v5

    .line 601
    if-le v4, v1, :cond_31

    .line 602
    const/4 v1, -0x1

    .line 621
    :cond_30
    return v1

    .line 604
    :cond_31
    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    sub-int/2addr v1, v0

    .line 605
    goto :goto_18

    .line 608
    :sswitch_35
    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    if-ne v4, v1, :cond_3c

    .line 609
    iget v1, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    goto :goto_18

    .line 611
    :cond_3c
    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    if-ge v4, v1, :cond_42

    .line 612
    add-int/lit8 v1, v1, -0x1

    .line 614
    :cond_42
    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    if-gt v0, v1, :cond_18

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 592
    nop

    :sswitch_data_4a
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_24
        0x8 -> :sswitch_35
    .end sparse-switch
.end method

.method c()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 121
    :goto_8
    if-ge v1, v3, :cond_1b

    .line 122
    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->c:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/AdapterHelper$Callback;->b(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 121
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 124
    :cond_1b
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->a(Ljava/util/List;)V

    .line 125
    iput v2, p0, Landroid/support/v7/widget/AdapterHelper;->h:I

    .line 126
    return-void
.end method

.method c(II)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 529
    if-ge p2, v0, :cond_5

    .line 534
    :goto_4
    return v1

    .line 532
    :cond_5
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->a:Ljava/util/ArrayList;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, p2, v4}, Landroid/support/v7/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    iget v2, p0, Landroid/support/v7/widget/AdapterHelper;->h:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/support/v7/widget/AdapterHelper;->h:I

    .line 534
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_20

    :goto_1e
    move v1, v0

    goto :goto_4

    :cond_20
    move v0, v1

    goto :goto_1e
.end method

.method d()Z
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method e()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 558
    invoke-virtual {p0}, Landroid/support/v7/widget/AdapterHelper;->c()V

    .line 559
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 560
    :goto_b
    if-ge v1, v3, :cond_65

    .line 561
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 562
    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->a:I

    packed-switch v4, :pswitch_data_6e

    .line 580
    :goto_1a
    :pswitch_1a
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_23

    .line 581
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 560
    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 564
    :pswitch_27
    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->c:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/AdapterHelper$Callback;->b(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 565
    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->c:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    invoke-interface {v4, v5, v0}, Landroid/support/v7/widget/AdapterHelper$Callback;->c(II)V

    goto :goto_1a

    .line 568
    :pswitch_36
    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->c:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/AdapterHelper$Callback;->b(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 569
    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->c:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    invoke-interface {v4, v5, v0}, Landroid/support/v7/widget/AdapterHelper$Callback;->a(II)V

    goto :goto_1a

    .line 572
    :pswitch_45
    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->c:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/AdapterHelper$Callback;->b(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 573
    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->c:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    iget v6, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    iget-object v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->c:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v0}, Landroid/support/v7/widget/AdapterHelper$Callback;->a(IILjava/lang/Object;)V

    goto :goto_1a

    .line 576
    :pswitch_56
    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->c:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/AdapterHelper$Callback;->b(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 577
    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->c:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->b:I

    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->d:I

    invoke-interface {v4, v5, v0}, Landroid/support/v7/widget/AdapterHelper$Callback;->d(II)V

    goto :goto_1a

    .line 584
    :cond_65
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->a(Ljava/util/List;)V

    .line 585
    iput v2, p0, Landroid/support/v7/widget/AdapterHelper;->h:I

    .line 586
    return-void

    .line 562
    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_27
        :pswitch_36
        :pswitch_1a
        :pswitch_45
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_56
    .end packed-switch
.end method

.method f()Z
    .registers 2

    .prologue
    .line 625
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
