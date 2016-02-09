.class Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1;
.super Ljava/lang/Object;
.source "Place2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1;->this$1:Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;

    iput-object p2, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1;->val$response_text:Ljava/lang/String;

    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1;)Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;
    .registers 2

    .prologue
    .line 815
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1;->this$1:Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 818
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1;->this$1:Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->access$1(Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;)Lic/buzzebeeslib/activity/Place2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$0(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1$1;

    iget-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1$1;-><init>(Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 824
    return-void
.end method
