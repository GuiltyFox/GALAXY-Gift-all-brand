.class Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller$1;
.super Ljava/lang/Object;
.source "AbsHListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;->a(I)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;I)V
    .registers 3

    .prologue
    .line 3936
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller$1;->b:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    iput p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3940
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller$1;->b:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller$1;->a:I

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;->a(I)V

    .line 3941
    return-void
.end method
