.class Lic/buzzebeeslib/activity/Place2Activity$1;
.super Ljava/lang/Object;
.source "Place2Activity.java"

# interfaces
.implements Lic/buzzebeeslib/control/PullToRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/Place2Activity;->onCreateView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/Place2Activity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/Place2Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity$1;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$1;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # invokes: Lic/buzzebeeslib/activity/Place2Activity;->getLocation()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$19(Lic/buzzebeeslib/activity/Place2Activity;)V

    .line 219
    return-void
.end method
