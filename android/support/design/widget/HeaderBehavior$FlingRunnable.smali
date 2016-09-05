.class Landroid/support/design/widget/HeaderBehavior$FlingRunnable;
.super Ljava/lang/Object;
.source "HeaderBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mLayout:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final mParent:Landroid/support/design/widget/CoordinatorLayout;

.field final synthetic this$0:Landroid/support/design/widget/HeaderBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/HeaderBehavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 292
    iput-object p1, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->this$0:Landroid/support/design/widget/HeaderBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p2, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    .line 294
    iput-object p3, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    .line 295
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 299
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->this$0:Landroid/support/design/widget/HeaderBehavior;

    # getter for: Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;
    invoke-static {v0}, Landroid/support/design/widget/HeaderBehavior;->access$000(Landroid/support/design/widget/HeaderBehavior;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 300
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->this$0:Landroid/support/design/widget/HeaderBehavior;

    # getter for: Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;
    invoke-static {v0}, Landroid/support/design/widget/HeaderBehavior;->access$000(Landroid/support/design/widget/HeaderBehavior;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->g()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 301
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->this$0:Landroid/support/design/widget/HeaderBehavior;

    iget-object v1, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    iget-object v3, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->this$0:Landroid/support/design/widget/HeaderBehavior;

    # getter for: Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;
    invoke-static {v3}, Landroid/support/design/widget/HeaderBehavior;->access$000(Landroid/support/design/widget/HeaderBehavior;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/ScrollerCompat;->c()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 303
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 308
    :cond_30
    :goto_30
    return-void

    .line 305
    :cond_31
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->this$0:Landroid/support/design/widget/HeaderBehavior;

    iget-object v1, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/HeaderBehavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    goto :goto_30
.end method
