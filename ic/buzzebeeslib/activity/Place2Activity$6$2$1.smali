.class Lic/buzzebeeslib/activity/Place2Activity$6$2$1;
.super Ljava/lang/Object;
.source "Place2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/Place2Activity$6$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lic/buzzebeeslib/activity/Place2Activity$6$2;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/Place2Activity$6$2;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity$6$2$1;->this$2:Lic/buzzebeeslib/activity/Place2Activity$6$2;

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 569
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$6$2$1;->this$2:Lic/buzzebeeslib/activity/Place2Activity$6$2;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity$6$2;->this$1:Lic/buzzebeeslib/activity/Place2Activity$6;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity$6$2;->access$0(Lic/buzzebeeslib/activity/Place2Activity$6$2;)Lic/buzzebeeslib/activity/Place2Activity$6;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity$6;->access$0(Lic/buzzebeeslib/activity/Place2Activity$6;)Lic/buzzebeeslib/activity/Place2Activity;

    move-result-object v0

    # invokes: Lic/buzzebeeslib/activity/Place2Activity;->getLocationByGPS()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$31(Lic/buzzebeeslib/activity/Place2Activity;)V

    .line 570
    return-void
.end method
