.class Lcom/slidingmenu/lib/app/SlidingActivityHelper$1;
.super Ljava/lang/Object;
.source "SlidingActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slidingmenu/lib/app/SlidingActivityHelper;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

.field private final synthetic val$open:Z

.field private final synthetic val$secondary:Z


# direct methods
.method constructor <init>(Lcom/slidingmenu/lib/app/SlidingActivityHelper;ZZ)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper$1;->this$0:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    iput-boolean p2, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper$1;->val$open:Z

    iput-boolean p3, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper$1;->val$secondary:Z

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-boolean v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper$1;->val$open:Z

    if-eqz v0, :cond_1d

    .line 76
    iget-boolean v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper$1;->val$secondary:Z

    if-eqz v0, :cond_13

    .line 77
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper$1;->this$0:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    # getter for: Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;
    invoke-static {v0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->access$0(Lcom/slidingmenu/lib/app/SlidingActivityHelper;)Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->showSecondaryMenu(Z)V

    .line 84
    :goto_12
    return-void

    .line 79
    :cond_13
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper$1;->this$0:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    # getter for: Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;
    invoke-static {v0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->access$0(Lcom/slidingmenu/lib/app/SlidingActivityHelper;)Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->showMenu(Z)V

    goto :goto_12

    .line 82
    :cond_1d
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper$1;->this$0:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    # getter for: Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;
    invoke-static {v0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->access$0(Lcom/slidingmenu/lib/app/SlidingActivityHelper;)Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->showContent(Z)V

    goto :goto_12
.end method
