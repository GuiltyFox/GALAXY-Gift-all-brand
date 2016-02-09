.class Lic/buzzebeeslib/activity/BaseSlidingActivity$1;
.super Ljava/lang/Object;
.source "BaseSlidingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/BaseSlidingActivity;->ShowSlidingMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/BaseSlidingActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/BaseSlidingActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/BaseSlidingActivity$1;->this$0:Lic/buzzebeeslib/activity/BaseSlidingActivity;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lic/buzzebeeslib/activity/BaseSlidingActivity$1;->this$0:Lic/buzzebeeslib/activity/BaseSlidingActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/BaseSlidingActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->toggle(Z)V

    .line 72
    return-void
.end method
