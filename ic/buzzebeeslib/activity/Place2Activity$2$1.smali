.class Lic/buzzebeeslib/activity/Place2Activity$2$1;
.super Ljava/lang/Object;
.source "Place2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/Place2Activity$2;->onScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/Place2Activity$2;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/Place2Activity$2;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity$2$1;->this$1:Lic/buzzebeeslib/activity/Place2Activity$2;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 240
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$2$1;->this$1:Lic/buzzebeeslib/activity/Place2Activity$2;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity$2;->this$0:Lic/buzzebeeslib/activity/Place2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity$2;->access$0(Lic/buzzebeeslib/activity/Place2Activity$2;)Lic/buzzebeeslib/activity/Place2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->booleanCancelRunnable:Z
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$5(Lic/buzzebeeslib/activity/Place2Activity;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 241
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$2$1;->this$1:Lic/buzzebeeslib/activity/Place2Activity$2;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity$2;->this$0:Lic/buzzebeeslib/activity/Place2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity$2;->access$0(Lic/buzzebeeslib/activity/Place2Activity$2;)Lic/buzzebeeslib/activity/Place2Activity;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity$2$1;->this$1:Lic/buzzebeeslib/activity/Place2Activity$2;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity$2;->this$0:Lic/buzzebeeslib/activity/Place2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/Place2Activity$2;->access$0(Lic/buzzebeeslib/activity/Place2Activity$2;)Lic/buzzebeeslib/activity/Place2Activity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLat:D
    invoke-static {v2}, Lic/buzzebeeslib/activity/Place2Activity;->access$11(Lic/buzzebeeslib/activity/Place2Activity;)D

    move-result-wide v2

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$2$1;->this$1:Lic/buzzebeeslib/activity/Place2Activity$2;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity$2;->this$0:Lic/buzzebeeslib/activity/Place2Activity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/Place2Activity$2;->access$0(Lic/buzzebeeslib/activity/Place2Activity$2;)Lic/buzzebeeslib/activity/Place2Activity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLon:D
    invoke-static {v4}, Lic/buzzebeeslib/activity/Place2Activity;->access$12(Lic/buzzebeeslib/activity/Place2Activity;)D

    move-result-wide v4

    # invokes: Lic/buzzebeeslib/activity/Place2Activity;->fetchPlaces(ZDD)V
    invoke-static/range {v0 .. v5}, Lic/buzzebeeslib/activity/Place2Activity;->access$13(Lic/buzzebeeslib/activity/Place2Activity;ZDD)V

    .line 243
    :cond_2a
    return-void
.end method
