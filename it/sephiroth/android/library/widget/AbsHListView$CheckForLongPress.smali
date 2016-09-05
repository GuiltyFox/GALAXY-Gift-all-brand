.class Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;
.super Lit/sephiroth/android/library/widget/AbsHListView$WindowRunnnable;
.source "AbsHListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method private constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .registers 3

    .prologue
    .line 2517
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/AbsHListView$WindowRunnnable;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$1;)V
    .registers 3

    .prologue
    .line 2517
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 2521
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    .line 2522
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v3, v3, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2523
    if-eqz v2, :cond_43

    .line 2524
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    .line 2525
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v3, v3, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v4, v4, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2528
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;->b()Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-boolean v3, v3, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-nez v3, :cond_4a

    .line 2529
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3, v2, v0, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->c(Landroid/view/View;IJ)Z

    move-result v0

    .line 2531
    :goto_34
    if-eqz v0, :cond_44

    .line 2532
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v3, -0x1

    iput v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 2533
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    .line 2534
    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2539
    :cond_43
    :goto_43
    return-void

    .line 2536
    :cond_44
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, 0x2

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    goto :goto_43

    :cond_4a
    move v0, v1

    goto :goto_34
.end method
