.class Lit/sephiroth/android/library/widget/ExpandableHListPosition;
.super Ljava/lang/Object;
.source "ExpandableHListPosition.java"


# static fields
.field public static final CHILD:I = 0x1

.field public static final GROUP:I = 0x2

.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/ExpandableHListPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public childPos:I

.field flatListPos:I

.field public groupPos:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method private static getRecycledOrCreate()Lit/sephiroth/android/library/widget/ExpandableHListPosition;
    .registers 4

    .prologue
    .line 119
    sget-object v2, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v2

    .line 120
    :try_start_3
    sget-object v1, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_19

    .line 121
    sget-object v1, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->sPool:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/ExpandableHListPosition;

    .line 125
    .local v0, "elp":Lit/sephiroth/android/library/widget/ExpandableHListPosition;
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_20

    .line 126
    invoke-direct {v0}, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->resetState()V

    .line 127
    .end local v0    # "elp":Lit/sephiroth/android/library/widget/ExpandableHListPosition;
    :goto_18
    return-object v0

    .line 123
    :cond_19
    :try_start_19
    new-instance v0, Lit/sephiroth/android/library/widget/ExpandableHListPosition;

    invoke-direct {v0}, Lit/sephiroth/android/library/widget/ExpandableHListPosition;-><init>()V

    monitor-exit v2

    goto :goto_18

    .line 125
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    throw v1
.end method

.method static obtain(IIII)Lit/sephiroth/android/library/widget/ExpandableHListPosition;
    .registers 5
    .param p0, "type"    # I
    .param p1, "groupPos"    # I
    .param p2, "childPos"    # I
    .param p3, "flatListPos"    # I

    .prologue
    .line 109
    invoke-static {}, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->getRecycledOrCreate()Lit/sephiroth/android/library/widget/ExpandableHListPosition;

    move-result-object v0

    .line 110
    .local v0, "elp":Lit/sephiroth/android/library/widget/ExpandableHListPosition;
    iput p0, v0, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->type:I

    .line 111
    iput p1, v0, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->groupPos:I

    .line 112
    iput p2, v0, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->childPos:I

    .line 113
    iput p3, v0, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->flatListPos:I

    .line 114
    return-object v0
.end method

.method static obtainChildPosition(II)Lit/sephiroth/android/library/widget/ExpandableHListPosition;
    .registers 4
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    .prologue
    .line 88
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->obtain(IIII)Lit/sephiroth/android/library/widget/ExpandableHListPosition;

    move-result-object v0

    return-object v0
.end method

.method static obtainGroupPosition(I)Lit/sephiroth/android/library/widget/ExpandableHListPosition;
    .registers 3
    .param p0, "groupPosition"    # I

    .prologue
    const/4 v1, 0x0

    .line 84
    const/4 v0, 0x2

    invoke-static {v0, p0, v1, v1}, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->obtain(IIII)Lit/sephiroth/android/library/widget/ExpandableHListPosition;

    move-result-object v0

    return-object v0
.end method

.method static obtainPosition(J)Lit/sephiroth/android/library/widget/ExpandableHListPosition;
    .registers 8
    .param p0, "packedPosition"    # J

    .prologue
    const/4 v4, 0x1

    .line 92
    const-wide v2, 0xffffffffL

    cmp-long v1, p0, v2

    if-nez v1, :cond_c

    .line 93
    const/4 v0, 0x0

    .line 105
    :goto_b
    return-object v0

    .line 96
    :cond_c
    invoke-static {}, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->getRecycledOrCreate()Lit/sephiroth/android/library/widget/ExpandableHListPosition;

    move-result-object v0

    .line 97
    .local v0, "elp":Lit/sephiroth/android/library/widget/ExpandableHListPosition;
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    iput v1, v0, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->groupPos:I

    .line 98
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v1

    if-ne v1, v4, :cond_25

    .line 100
    iput v4, v0, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->type:I

    .line 101
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    iput v1, v0, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->childPos:I

    goto :goto_b

    .line 103
    :cond_25
    const/4 v1, 0x2

    iput v1, v0, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->type:I

    goto :goto_b
.end method

.method private resetState()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->groupPos:I

    .line 70
    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->childPos:I

    .line 71
    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->flatListPos:I

    .line 72
    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->type:I

    .line 73
    return-void
.end method


# virtual methods
.method getPackedPosition()J
    .registers 3

    .prologue
    .line 79
    iget v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->groupPos:I

    iget v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->childPos:I

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    .line 80
    :goto_d
    return-wide v0

    :cond_e
    iget v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->groupPos:I

    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    goto :goto_d
.end method

.method public recycle()V
    .registers 4

    .prologue
    .line 135
    sget-object v1, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v1

    .line 136
    :try_start_3
    sget-object v0, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_11

    .line 137
    sget-object v0, Lit/sephiroth/android/library/widget/ExpandableHListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_11
    monitor-exit v1

    .line 140
    return-void

    .line 139
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method
