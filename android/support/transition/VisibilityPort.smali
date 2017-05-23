.class abstract Landroid/support/transition/VisibilityPort;
.super Landroid/support/transition/TransitionPort;
.source "VisibilityPort.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android:visibility:visibility"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android:visibility:parent"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/transition/VisibilityPort;->a:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/transition/TransitionPort;-><init>()V

    .line 216
    return-void
.end method

.method private a(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/VisibilityPort$VisibilityInfo;
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 93
    new-instance v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;

    invoke-direct {v1}, Landroid/support/transition/VisibilityPort$VisibilityInfo;-><init>()V

    .line 94
    iput-boolean v4, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->a:Z

    .line 95
    iput-boolean v4, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->b:Z

    .line 96
    if-eqz p1, :cond_5f

    .line 97
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->c:I

    .line 98
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:parent"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->e:Landroid/view/ViewGroup;

    .line 103
    :goto_2d
    if-eqz p2, :cond_64

    .line 104
    iget-object v0, p2, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->d:I

    .line 105
    iget-object v0, p2, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:parent"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->f:Landroid/view/ViewGroup;

    .line 110
    :goto_4d
    if-eqz p1, :cond_77

    if-eqz p2, :cond_77

    .line 111
    iget v0, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->c:I

    iget v2, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->d:I

    if-ne v0, v2, :cond_69

    iget-object v0, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->e:Landroid/view/ViewGroup;

    iget-object v2, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->f:Landroid/view/ViewGroup;

    if-ne v0, v2, :cond_69

    move-object v0, v1

    .line 142
    :goto_5e
    return-object v0

    .line 100
    :cond_5f
    iput v5, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->c:I

    .line 101
    iput-object v6, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->e:Landroid/view/ViewGroup;

    goto :goto_2d

    .line 107
    :cond_64
    iput v5, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->d:I

    .line 108
    iput-object v6, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->f:Landroid/view/ViewGroup;

    goto :goto_4d

    .line 115
    :cond_69
    iget v0, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->c:I

    iget v2, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->d:I

    if-eq v0, v2, :cond_88

    .line 116
    iget v0, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->c:I

    if-nez v0, :cond_7f

    .line 117
    iput-boolean v4, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->b:Z

    .line 118
    iput-boolean v3, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->a:Z

    .line 135
    :cond_77
    :goto_77
    if-nez p1, :cond_a0

    .line 136
    iput-boolean v3, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->b:Z

    .line 137
    iput-boolean v3, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->a:Z

    :cond_7d
    :goto_7d
    move-object v0, v1

    .line 142
    goto :goto_5e

    .line 119
    :cond_7f
    iget v0, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->d:I

    if-nez v0, :cond_77

    .line 120
    iput-boolean v3, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->b:Z

    .line 121
    iput-boolean v3, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->a:Z

    goto :goto_77

    .line 124
    :cond_88
    iget-object v0, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->e:Landroid/view/ViewGroup;

    iget-object v2, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->f:Landroid/view/ViewGroup;

    if-eq v0, v2, :cond_77

    .line 125
    iget-object v0, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->f:Landroid/view/ViewGroup;

    if-nez v0, :cond_97

    .line 126
    iput-boolean v4, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->b:Z

    .line 127
    iput-boolean v3, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->a:Z

    goto :goto_77

    .line 128
    :cond_97
    iget-object v0, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_77

    .line 129
    iput-boolean v3, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->b:Z

    .line 130
    iput-boolean v3, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->a:Z

    goto :goto_77

    .line 138
    :cond_a0
    if-nez p2, :cond_7d

    .line 139
    iput-boolean v4, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->b:Z

    .line 140
    iput-boolean v3, v1, Landroid/support/transition/VisibilityPort$VisibilityInfo;->a:Z

    goto :goto_7d
.end method

.method private d(Landroid/support/transition/TransitionValues;)V
    .registers 5

    .prologue
    .line 51
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 52
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:visibility"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v1, "android:visibility:parent"

    iget-object v2, p1, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 7

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 148
    invoke-direct {p0, p2, p3}, Landroid/support/transition/VisibilityPort;->a(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/VisibilityPort$VisibilityInfo;

    move-result-object v6

    .line 149
    iget-boolean v3, v6, Landroid/support/transition/VisibilityPort$VisibilityInfo;->a:Z

    if-eqz v3, :cond_71

    .line 153
    iget-object v3, p0, Landroid/support/transition/VisibilityPort;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1b

    iget-object v3, p0, Landroid/support/transition/VisibilityPort;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_41

    .line 154
    :cond_1b
    if-eqz p2, :cond_5c

    iget-object v3, p2, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    move-object v5, v3

    .line 155
    :goto_20
    if-eqz p3, :cond_5e

    iget-object v3, p3, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    move-object v4, v3

    .line 156
    :goto_25
    if-eqz v5, :cond_60

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v3

    .line 157
    :goto_2b
    if-eqz v4, :cond_31

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v0

    .line 158
    :cond_31
    int-to-long v8, v3

    invoke-virtual {p0, v5, v8, v9}, Landroid/support/transition/VisibilityPort;->a(Landroid/view/View;J)Z

    move-result v3

    if-nez v3, :cond_3f

    int-to-long v8, v0

    invoke-virtual {p0, v4, v8, v9}, Landroid/support/transition/VisibilityPort;->a(Landroid/view/View;J)Z

    move-result v0

    if-eqz v0, :cond_62

    :cond_3f
    const/4 v0, 0x1

    :goto_40
    move v1, v0

    .line 160
    :cond_41
    if-nez v1, :cond_4b

    iget-object v0, v6, Landroid/support/transition/VisibilityPort$VisibilityInfo;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_4b

    iget-object v0, v6, Landroid/support/transition/VisibilityPort$VisibilityInfo;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_71

    .line 161
    :cond_4b
    iget-boolean v0, v6, Landroid/support/transition/VisibilityPort$VisibilityInfo;->b:Z

    if-eqz v0, :cond_64

    .line 162
    iget v3, v6, Landroid/support/transition/VisibilityPort$VisibilityInfo;->c:I

    iget v5, v6, Landroid/support/transition/VisibilityPort$VisibilityInfo;->d:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/VisibilityPort;->a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    .line 171
    :goto_5b
    return-object v0

    :cond_5c
    move-object v5, v2

    .line 154
    goto :goto_20

    :cond_5e
    move-object v4, v2

    .line 155
    goto :goto_25

    :cond_60
    move v3, v0

    .line 156
    goto :goto_2b

    :cond_62
    move v0, v1

    .line 158
    goto :goto_40

    .line 165
    :cond_64
    iget v3, v6, Landroid/support/transition/VisibilityPort$VisibilityInfo;->c:I

    iget v5, v6, Landroid/support/transition/VisibilityPort$VisibilityInfo;->d:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/VisibilityPort;->b(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_5b

    :cond_71
    move-object v0, v2

    .line 171
    goto :goto_5b
.end method

.method public a(Landroid/support/transition/TransitionValues;)V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/support/transition/VisibilityPort;->d(Landroid/support/transition/TransitionValues;)V

    .line 59
    return-void
.end method

.method public a()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    sget-object v0, Landroid/support/transition/VisibilityPort;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 7

    .prologue
    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/support/transition/TransitionValues;)V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/support/transition/VisibilityPort;->d(Landroid/support/transition/TransitionValues;)V

    .line 64
    return-void
.end method

.method public c(Landroid/support/transition/TransitionValues;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 82
    if-nez p1, :cond_4

    .line 88
    :goto_3
    return v1

    .line 85
    :cond_4
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 86
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v3, "android:visibility:parent"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 88
    if-nez v2, :cond_25

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_23
    move v1, v0

    goto :goto_3

    :cond_25
    move v0, v1

    goto :goto_23
.end method
