.class Lit/sephiroth/android/library/widget/AbsHListView$1;
.super Ljava/lang/Object;
.source "AbsHListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/widget/AbsHListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lit/sephiroth/android/library/widget/AbsHListView$PerformClick;

.field final synthetic c:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Lit/sephiroth/android/library/widget/AbsHListView$PerformClick;)V
    .registers 4

    .prologue
    .line 3192
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$1;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iput-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$1;->a:Landroid/view/View;

    iput-object p3, p0, Lit/sephiroth/android/library/widget/AbsHListView$1;->b:Lit/sephiroth/android/library/widget/AbsHListView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3196
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$1;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, -0x1

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3197
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$1;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3198
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$1;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    .line 3199
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$1;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-nez v0, :cond_1b

    .line 3200
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$1;->b:Lit/sephiroth/android/library/widget/AbsHListView$PerformClick;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$PerformClick;->run()V

    .line 3202
    :cond_1b
    return-void
.end method
