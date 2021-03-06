.class Landroid/support/v7/widget/ViewInfoStore;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# instance fields
.field final a:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Landroid/support/v7/widget/ViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->a:Landroid/support/v4/util/ArrayMap;

    .line 49
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->b:Landroid/support/v4/util/LongSparseArray;

    .line 292
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->a(Ljava/lang/Object;)I

    move-result v2

    .line 104
    if-gez v2, :cond_a

    .line 125
    :cond_9
    :goto_9
    return-object v1

    .line 107
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 108
    if-eqz v0, :cond_9

    iget v3, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    and-int/2addr v3, p2

    if-eqz v3, :cond_9

    .line 109
    iget v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    .line 111
    const/4 v1, 0x4

    if-ne p2, v1, :cond_34

    .line 112
    iget-object v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->b:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 119
    :goto_25
    iget v3, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_9

    .line 120
    iget-object v3, p0, Landroid/support/v7/widget/ViewInfoStore;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->d(I)Ljava/lang/Object;

    .line 121
    invoke-static {v0}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a(Landroid/support/v7/widget/ViewInfoStore$InfoRecord;)V

    goto :goto_9

    .line 113
    :cond_34
    const/16 v1, 0x8

    if-ne p2, v1, :cond_3b

    .line 114
    iget-object v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->c:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    goto :goto_25

    .line 116
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must provide flag PRE or POST"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 175
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->b:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method a()V
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 57
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->b:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->c()V

    .line 58
    return-void
.end method

.method a(JLandroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 5

    .prologue
    .line 134
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->b:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->b(JLjava/lang/Object;)V

    .line 135
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5

    .prologue
    .line 66
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 67
    if-nez v0, :cond_13

    .line 68
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 69
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_13
    iput-object p2, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->b:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 72
    iget v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    .line 73
    return-void
.end method

.method a(Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;)V
    .registers 7

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_9
    if-ltz v2, :cond_84

    .line 222
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 223
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/support/v4/util/ArrayMap;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 224
    iget v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2c

    .line 226
    invoke-interface {p1, v0}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 253
    :cond_25
    :goto_25
    invoke-static {v1}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a(Landroid/support/v7/widget/ViewInfoStore$InfoRecord;)V

    .line 221
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_9

    .line 227
    :cond_2c
    iget v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_42

    .line 229
    iget-object v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->b:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    if-nez v3, :cond_3a

    .line 232
    invoke-interface {p1, v0}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_25

    .line 234
    :cond_3a
    iget-object v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->b:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->c:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_25

    .line 236
    :cond_42
    iget v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    and-int/lit8 v3, v3, 0xe

    const/16 v4, 0xe

    if-ne v3, v4, :cond_52

    .line 238
    iget-object v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->b:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->c:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_25

    .line 239
    :cond_52
    iget v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0xc

    if-ne v3, v4, :cond_62

    .line 241
    iget-object v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->b:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->c:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_25

    .line 242
    :cond_62
    iget v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_6f

    .line 244
    iget-object v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->b:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    const/4 v4, 0x0

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_25

    .line 245
    :cond_6f
    iget v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_7d

    .line 247
    iget-object v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->b:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->c:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_25

    .line 248
    :cond_7d
    iget v0, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_25

    goto :goto_25

    .line 255
    :cond_84
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 77
    if-eqz v0, :cond_12

    iget v0, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 3

    .prologue
    .line 88
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ViewInfoStore;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method b()V
    .registers 1

    .prologue
    .line 275
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->b()V

    .line 276
    return-void
.end method

.method b(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 148
    if-nez v0, :cond_13

    .line 149
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 150
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_13
    iget v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    .line 153
    iput-object p2, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->b:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 154
    return-void
.end method

.method c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 3

    .prologue
    .line 99
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ViewInfoStore;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method c(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5

    .prologue
    .line 184
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 185
    if-nez v0, :cond_13

    .line 186
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 187
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_13
    iput-object p2, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->c:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 190
    iget v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    .line 191
    return-void
.end method

.method d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 164
    if-eqz v0, :cond_12

    iget v0, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 201
    if-nez v0, :cond_13

    .line 202
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 203
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_13
    iget v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    .line 206
    return-void
.end method

.method f(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 214
    if-nez v0, :cond_b

    .line 218
    :goto_a
    return-void

    .line 217
    :cond_b
    iget v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a:I

    goto :goto_a
.end method

.method g(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .prologue
    .line 262
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->b:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_17

    .line 263
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->b:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LongSparseArray;->c(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_25

    .line 264
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->b:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LongSparseArray;->a(I)V

    .line 268
    :cond_17
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 269
    if-eqz v0, :cond_24

    .line 270
    invoke-static {v0}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->a(Landroid/support/v7/widget/ViewInfoStore$InfoRecord;)V

    .line 272
    :cond_24
    return-void

    .line 262
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method

.method public h(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ViewInfoStore;->f(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 280
    return-void
.end method
