.class Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1$1;
.super Ljava/lang/Object;
.source "Place2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1$1;->this$2:Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1;

    iput-object p2, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1$1;->val$response_text:Ljava/lang/String;

    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 821
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1$1;->this$2:Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1;->this$1:Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1;->access$0(Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1;)Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->access$1(Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;)Lic/buzzebeeslib/activity/Place2Activity;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1$1;->val$response_text:Ljava/lang/String;

    iget-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1$1;->this$2:Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1;->this$1:Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;
    invoke-static {v2}, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1;->access$0(Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1;)Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->gLoadMore:Z
    invoke-static {v2}, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->access$0(Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;)Z

    move-result v2

    # invokes: Lic/buzzebeeslib/activity/Place2Activity;->ProcessJsonPlace(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/activity/Place2Activity;->access$1(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/String;Z)V

    .line 822
    return-void
.end method
