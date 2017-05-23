.class Landroid/support/transition/TransitionIcs;
.super Landroid/support/transition/TransitionImpl;
.source "TransitionIcs.java"


# instance fields
.field a:Landroid/support/transition/TransitionPort;

.field b:Landroid/support/transition/TransitionInterface;

.field private c:Landroid/support/transition/TransitionIcs$CompatListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/transition/TransitionImpl;-><init>()V

    .line 232
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/transition/TransitionPort;->a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Landroid/support/transition/TransitionImpl;
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->b(I)Landroid/support/transition/TransitionPort;

    .line 199
    return-object p0
.end method

.method public a(IZ)Landroid/support/transition/TransitionImpl;
    .registers 4

    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->b(IZ)Landroid/support/transition/TransitionPort;

    .line 105
    return-object p0
.end method

.method public a(J)Landroid/support/transition/TransitionImpl;
    .registers 4

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->a(J)Landroid/support/transition/TransitionPort;

    .line 140
    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionImpl;
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionPort;

    .line 151
    return-object p0
.end method

.method public a(Landroid/support/transition/TransitionInterfaceListener;)Landroid/support/transition/TransitionImpl;
    .registers 4

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->c:Landroid/support/transition/TransitionIcs$CompatListener;

    if-nez v0, :cond_12

    .line 48
    new-instance v0, Landroid/support/transition/TransitionIcs$CompatListener;

    invoke-direct {v0, p0}, Landroid/support/transition/TransitionIcs$CompatListener;-><init>(Landroid/support/transition/TransitionIcs;)V

    iput-object v0, p0, Landroid/support/transition/TransitionIcs;->c:Landroid/support/transition/TransitionIcs$CompatListener;

    .line 49
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    iget-object v1, p0, Landroid/support/transition/TransitionIcs;->c:Landroid/support/transition/TransitionIcs$CompatListener;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionPort;->a(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    .line 51
    :cond_12
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->c:Landroid/support/transition/TransitionIcs$CompatListener;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionIcs$CompatListener;->a(Landroid/support/transition/TransitionInterfaceListener;)V

    .line 52
    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/transition/TransitionImpl;
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->a(Landroid/view/View;)Landroid/support/transition/TransitionPort;

    .line 71
    return-object p0
.end method

.method public a(Landroid/view/View;Z)Landroid/support/transition/TransitionImpl;
    .registers 4

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->b(Landroid/view/View;Z)Landroid/support/transition/TransitionPort;

    .line 99
    return-object p0
.end method

.method public a(Ljava/lang/Class;Z)Landroid/support/transition/TransitionImpl;
    .registers 4

    .prologue
    .line 110
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->b(Ljava/lang/Class;Z)Landroid/support/transition/TransitionPort;

    .line 111
    return-object p0
.end method

.method public a(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 37
    iput-object p1, p0, Landroid/support/transition/TransitionIcs;->b:Landroid/support/transition/TransitionInterface;

    .line 38
    if-nez p2, :cond_c

    .line 39
    new-instance v0, Landroid/support/transition/TransitionIcs$TransitionWrapper;

    invoke-direct {v0, p1}, Landroid/support/transition/TransitionIcs$TransitionWrapper;-><init>(Landroid/support/transition/TransitionInterface;)V

    iput-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    .line 43
    :goto_b
    return-void

    .line 41
    :cond_c
    check-cast p2, Landroid/support/transition/TransitionPort;

    iput-object p2, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    goto :goto_b
.end method

.method public b()Landroid/animation/TimeInterpolator;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Landroid/support/transition/TransitionImpl;
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->a(I)Landroid/support/transition/TransitionPort;

    .line 77
    return-object p0
.end method

.method public b(IZ)Landroid/support/transition/TransitionImpl;
    .registers 4

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->a(IZ)Landroid/support/transition/TransitionPort;

    .line 123
    return-object p0
.end method

.method public b(J)Landroid/support/transition/TransitionImpl;
    .registers 4

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->b(J)Landroid/support/transition/TransitionPort;

    .line 167
    return-object p0
.end method

.method public b(Landroid/support/transition/TransitionInterfaceListener;)Landroid/support/transition/TransitionImpl;
    .registers 4

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->c:Landroid/support/transition/TransitionIcs$CompatListener;

    if-nez v0, :cond_5

    .line 65
    :cond_4
    :goto_4
    return-object p0

    .line 60
    :cond_5
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->c:Landroid/support/transition/TransitionIcs$CompatListener;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionIcs$CompatListener;->b(Landroid/support/transition/TransitionInterfaceListener;)V

    .line 61
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->c:Landroid/support/transition/TransitionIcs$CompatListener;

    invoke-virtual {v0}, Landroid/support/transition/TransitionIcs$CompatListener;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    iget-object v1, p0, Landroid/support/transition/TransitionIcs;->c:Landroid/support/transition/TransitionIcs$CompatListener;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionPort;->b(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/TransitionIcs;->c:Landroid/support/transition/TransitionIcs$CompatListener;

    goto :goto_4
.end method

.method public b(Landroid/view/View;)Landroid/support/transition/TransitionImpl;
    .registers 3

    .prologue
    .line 192
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->b(Landroid/view/View;)Landroid/support/transition/TransitionPort;

    .line 193
    return-object p0
.end method

.method public b(Landroid/view/View;Z)Landroid/support/transition/TransitionImpl;
    .registers 4

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->a(Landroid/view/View;Z)Landroid/support/transition/TransitionPort;

    .line 117
    return-object p0
.end method

.method public b(Ljava/lang/Class;Z)Landroid/support/transition/TransitionImpl;
    .registers 4

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->a(Ljava/lang/Class;Z)Landroid/support/transition/TransitionPort;

    .line 129
    return-object p0
.end method

.method public b(Landroid/support/transition/TransitionValues;)V
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->b(Landroid/support/transition/TransitionValues;)V

    .line 83
    return-void
.end method

.method public c(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;
    .registers 4

    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->c(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/support/transition/TransitionValues;)V
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->a(Landroid/support/transition/TransitionValues;)V

    .line 88
    return-void
.end method

.method public d()J
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->c()J

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
    .line 172
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->f()Ljava/util/List;

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
    .line 177
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public g()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->a()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
