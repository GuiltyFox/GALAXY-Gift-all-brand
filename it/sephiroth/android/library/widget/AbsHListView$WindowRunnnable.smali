.class Lit/sephiroth/android/library/widget/AbsHListView$WindowRunnnable;
.super Ljava/lang/Object;
.source "AbsHListView.java"


# instance fields
.field private a:I

.field final synthetic c:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method private constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .registers 2

    .prologue
    .line 2479
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$WindowRunnnable;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$1;)V
    .registers 3

    .prologue
    .line 2479
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$WindowRunnnable;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 2484
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$WindowRunnnable;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Lit/sephiroth/android/library/widget/AbsHListView;)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$WindowRunnnable;->a:I

    .line 2485
    return-void
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 2488
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$WindowRunnnable;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$WindowRunnnable;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Lit/sephiroth/android/library/widget/AbsHListView;)I

    move-result v0

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$WindowRunnnable;->a:I

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
