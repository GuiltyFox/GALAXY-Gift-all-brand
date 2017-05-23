.class Landroid/support/transition/TransitionKitKat;
.super Landroid/support/transition/TransitionImpl;
.source "TransitionKitKat.java"


# instance fields
.field a:Landroid/transition/Transition;

.field b:Landroid/support/transition/TransitionInterface;

.field private c:Landroid/support/transition/TransitionKitKat$CompatListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/transition/TransitionImpl;-><init>()V

    .line 323
    return-void
.end method

.method static a(Landroid/transition/TransitionValues;)Landroid/support/transition/TransitionValues;
    .registers 2

    .prologue
    .line 77
    if-nez p0, :cond_4

    .line 78
    const/4 v0, 0x0

    .line 82
    :goto_3
    return-object v0

    .line 80
    :cond_4
    new-instance v0, Landroid/support/transition/TransitionValues;

    invoke-direct {v0}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 81
    invoke-static {p0, v0}, Landroid/support/transition/TransitionKitKat;->a(Landroid/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V

    goto :goto_3
.end method

.method static a(Landroid/support/transition/TransitionInterface;Landroid/transition/TransitionValues;)V
    .registers 3

    .prologue
    .line 60
    new-instance v0, Landroid/support/transition/TransitionValues;

    invoke-direct {v0}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 62
    invoke-static {p1, v0}, Landroid/support/transition/TransitionKitKat;->a(Landroid/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V

    .line 63
    invoke-interface {p0, v0}, Landroid/support/transition/TransitionInterface;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 64
    invoke-static {v0, p1}, Landroid/support/transition/TransitionKitKat;->a(Landroid/support/transition/TransitionValues;Landroid/transition/TransitionValues;)V

    .line 65
    return-void
.end method

.method static a(Landroid/support/transition/TransitionValues;Landroid/transition/TransitionValues;)V
    .registers 4

    .prologue
    .line 49
    if-nez p0, :cond_3

    .line 56
    :cond_2
    :goto_2
    return-void

    .line 52
    :cond_3
    iget-object v0, p0, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    iput-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 53
    iget-object v0, p0, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 54
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p0, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2
.end method

.method static a(Landroid/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V
    .registers 4

    .prologue
    .line 38
    if-nez p0, :cond_3

    .line 45
    :cond_2
    :goto_2
    return-void

    .line 41
    :cond_3
    iget-object v0, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iput-object v0, p1, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    .line 42
    iget-object v0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 43
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2
.end method

.method static b(Landroid/support/transition/TransitionInterface;Landroid/transition/TransitionValues;)V
    .registers 3

    .prologue
    .line 69
    new-instance v0, Landroid/support/transition/TransitionValues;

    invoke-direct {v0}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 71
    invoke-static {p1, v0}, Landroid/support/transition/TransitionKitKat;->a(Landroid/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V

    .line 72
    invoke-interface {p0, v0}, Landroid/support/transition/TransitionInterface;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 73
    invoke-static {v0, p1}, Landroid/support/transition/TransitionKitKat;->a(Landroid/support/transition/TransitionValues;Landroid/transition/TransitionValues;)V

    .line 74
    return-void
.end method

.method static d(Landroid/support/transition/TransitionValues;)Landroid/transition/TransitionValues;
    .registers 2

    .prologue
    .line 86
    if-nez p0, :cond_4

    .line 87
    const/4 v0, 0x0

    .line 92
    :goto_3
    return-object v0

    .line 89
    :cond_4
    new-instance v0, Landroid/transition/TransitionValues;

    invoke-direct {v0}, Landroid/transition/TransitionValues;-><init>()V

    .line 91
    invoke-static {p0, v0}, Landroid/support/transition/TransitionKitKat;->a(Landroid/support/transition/TransitionValues;Landroid/transition/TransitionValues;)V

    goto :goto_3
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 163
    if-eqz p2, :cond_1c

    .line 164
    new-instance v1, Landroid/transition/TransitionValues;

    invoke-direct {v1}, Landroid/transition/TransitionValues;-><init>()V

    .line 165
    invoke-static {p2, v1}, Landroid/support/transition/TransitionKitKat;->a(Landroid/support/transition/TransitionValues;Landroid/transition/TransitionValues;)V

    .line 169
    :goto_b
    if-eqz p3, :cond_15

    .line 170
    new-instance v0, Landroid/transition/TransitionValues;

    invoke-direct {v0}, Landroid/transition/TransitionValues;-><init>()V

    .line 171
    invoke-static {p3, v0}, Landroid/support/transition/TransitionKitKat;->a(Landroid/support/transition/TransitionValues;Landroid/transition/TransitionValues;)V

    .line 175
    :cond_15
    iget-object v2, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v2, p1, v1, v0}, Landroid/transition/Transition;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    :cond_1c
    move-object v1, v0

    .line 167
    goto :goto_b
.end method

.method public a(I)Landroid/support/transition/TransitionImpl;
    .registers 4

    .prologue
    .line 282
    if-lez p1, :cond_d

    .line 285
    invoke-virtual {p0}, Landroid/support/transition/TransitionKitKat;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 287
    :cond_d
    return-object p0
.end method

.method public a(IZ)Landroid/support/transition/TransitionImpl;
    .registers 4

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeChildren(IZ)Landroid/transition/Transition;

    .line 187
    return-object p0
.end method

.method public a(J)Landroid/support/transition/TransitionImpl;
    .registers 4

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 222
    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionImpl;
    .registers 3

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 233
    return-object p0
.end method

.method public a(Landroid/support/transition/TransitionInterfaceListener;)Landroid/support/transition/TransitionImpl;
    .registers 4

    .prologue
    .line 107
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->c:Landroid/support/transition/TransitionKitKat$CompatListener;

    if-nez v0, :cond_12

    .line 108
    new-instance v0, Landroid/support/transition/TransitionKitKat$CompatListener;

    invoke-direct {v0, p0}, Landroid/support/transition/TransitionKitKat$CompatListener;-><init>(Landroid/support/transition/TransitionKitKat;)V

    iput-object v0, p0, Landroid/support/transition/TransitionKitKat;->c:Landroid/support/transition/TransitionKitKat$CompatListener;

    .line 109
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/support/transition/TransitionKitKat;->c:Landroid/support/transition/TransitionKitKat$CompatListener;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 111
    :cond_12
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->c:Landroid/support/transition/TransitionKitKat$CompatListener;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionKitKat$CompatListener;->a(Landroid/support/transition/TransitionInterfaceListener;)V

    .line 112
    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/transition/TransitionImpl;
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 131
    return-object p0
.end method

.method public a(Landroid/view/View;Z)Landroid/support/transition/TransitionImpl;
    .registers 4

    .prologue
    .line 180
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeChildren(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 181
    return-object p0
.end method

.method public a(Ljava/lang/Class;Z)Landroid/support/transition/TransitionImpl;
    .registers 4

    .prologue
    .line 192
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeChildren(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 193
    return-object p0
.end method

.method public a(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 97
    iput-object p1, p0, Landroid/support/transition/TransitionKitKat;->b:Landroid/support/transition/TransitionInterface;

    .line 98
    if-nez p2, :cond_c

    .line 99
    new-instance v0, Landroid/support/transition/TransitionKitKat$TransitionWrapper;

    invoke-direct {v0, p1}, Landroid/support/transition/TransitionKitKat$TransitionWrapper;-><init>(Landroid/support/transition/TransitionInterface;)V

    iput-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    .line 103
    :goto_b
    return-void

    .line 101
    :cond_c
    check-cast p2, Landroid/transition/Transition;

    iput-object p2, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    goto :goto_b
.end method

.method public b()Landroid/animation/TimeInterpolator;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Landroid/support/transition/TransitionImpl;
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    .line 137
    return-object p0
.end method

.method public b(IZ)Landroid/support/transition/TransitionImpl;
    .registers 4

    .prologue
    .line 204
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    .line 205
    return-object p0
.end method

.method public b(J)Landroid/support/transition/TransitionImpl;
    .registers 4

    .prologue
    .line 248
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    .line 249
    return-object p0
.end method

.method public b(Landroid/support/transition/TransitionInterfaceListener;)Landroid/support/transition/TransitionImpl;
    .registers 4

    .prologue
    .line 117
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->c:Landroid/support/transition/TransitionKitKat$CompatListener;

    if-nez v0, :cond_5

    .line 125
    :cond_4
    :goto_4
    return-object p0

    .line 120
    :cond_5
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->c:Landroid/support/transition/TransitionKitKat$CompatListener;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionKitKat$CompatListener;->b(Landroid/support/transition/TransitionInterfaceListener;)V

    .line 121
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->c:Landroid/support/transition/TransitionKitKat$CompatListener;

    invoke-virtual {v0}, Landroid/support/transition/TransitionKitKat$CompatListener;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/support/transition/TransitionKitKat;->c:Landroid/support/transition/TransitionKitKat$CompatListener;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/TransitionKitKat;->c:Landroid/support/transition/TransitionKitKat$CompatListener;

    goto :goto_4
.end method

.method public b(Landroid/view/View;)Landroid/support/transition/TransitionImpl;
    .registers 3

    .prologue
    .line 276
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 277
    return-object p0
.end method

.method public b(Landroid/view/View;Z)Landroid/support/transition/TransitionImpl;
    .registers 4

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 199
    return-object p0
.end method

.method public b(Ljava/lang/Class;Z)Landroid/support/transition/TransitionImpl;
    .registers 4

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 211
    return-object p0
.end method

.method public b(Landroid/support/transition/TransitionValues;)V
    .registers 4

    .prologue
    .line 142
    new-instance v0, Landroid/transition/TransitionValues;

    invoke-direct {v0}, Landroid/transition/TransitionValues;-><init>()V

    .line 144
    invoke-static {p1, v0}, Landroid/support/transition/TransitionKitKat;->a(Landroid/support/transition/TransitionValues;Landroid/transition/TransitionValues;)V

    .line 145
    iget-object v1, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v1, v0}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 146
    invoke-static {v0, p1}, Landroid/support/transition/TransitionKitKat;->a(Landroid/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V

    .line 147
    return-void
.end method

.method public c(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;
    .registers 5

    .prologue
    .line 269
    new-instance v0, Landroid/support/transition/TransitionValues;

    invoke-direct {v0}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 270
    iget-object v1, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/transition/TransitionKitKat;->a(Landroid/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V

    .line 271
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/support/transition/TransitionValues;)V
    .registers 4

    .prologue
    .line 151
    new-instance v0, Landroid/transition/TransitionValues;

    invoke-direct {v0}, Landroid/transition/TransitionValues;-><init>()V

    .line 153
    invoke-static {p1, v0}, Landroid/support/transition/TransitionKitKat;->a(Landroid/support/transition/TransitionValues;Landroid/transition/TransitionValues;)V

    .line 154
    iget-object v1, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v1, v0}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 155
    invoke-static {v0, p1}, Landroid/support/transition/TransitionKitKat;->a(Landroid/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V

    .line 156
    return-void
.end method

.method public d()J
    .registers 3

    .prologue
    .line 243
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->getStartDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public g()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
