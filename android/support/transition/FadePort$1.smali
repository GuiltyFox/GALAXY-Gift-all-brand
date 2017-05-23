.class Landroid/support/transition/FadePort$1;
.super Landroid/support/transition/TransitionPort$TransitionListenerAdapter;
.source "FadePort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/FadePort;->a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
.end annotation


# instance fields
.field a:Z

.field b:F

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/transition/FadePort;


# direct methods
.method constructor <init>(Landroid/support/transition/FadePort;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 152
    iput-object p1, p0, Landroid/support/transition/FadePort$1;->d:Landroid/support/transition/FadePort;

    iput-object p2, p0, Landroid/support/transition/FadePort$1;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/support/transition/TransitionPort$TransitionListenerAdapter;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/FadePort$1;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/TransitionPort;)V
    .registers 4

    .prologue
    .line 165
    iget-boolean v0, p0, Landroid/support/transition/FadePort$1;->a:Z

    if-nez v0, :cond_b

    .line 166
    iget-object v0, p0, Landroid/support/transition/FadePort$1;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 168
    :cond_b
    return-void
.end method

.method public b(Landroid/support/transition/TransitionPort;)V
    .registers 4

    .prologue
    .line 172
    iget-object v0, p0, Landroid/support/transition/FadePort$1;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, Landroid/support/transition/FadePort$1;->b:F

    .line 173
    iget-object v0, p0, Landroid/support/transition/FadePort$1;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 174
    return-void
.end method

.method public c(Landroid/support/transition/TransitionPort;)V
    .registers 4

    .prologue
    .line 178
    iget-object v0, p0, Landroid/support/transition/FadePort$1;->c:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/FadePort$1;->b:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 179
    return-void
.end method
