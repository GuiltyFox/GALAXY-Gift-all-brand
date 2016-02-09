.class Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$2;
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


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$2;->this$1:Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;

    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 835
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$2;->this$1:Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->access$1(Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;)Lic/buzzebeeslib/activity/Place2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gTvLoadingPage:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$3(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 836
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$2;->this$1:Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->access$1(Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;)Lic/buzzebeeslib/activity/Place2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gPbLoadingPage:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$4(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 837
    return-void
.end method
