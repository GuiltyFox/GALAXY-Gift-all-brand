.class Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener$1;
.super Ljava/lang/Object;
.source "Place2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener$1;->this$1:Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;

    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 883
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener$1;->this$1:Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->access$1(Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;)Lic/buzzebeeslib/activity/Place2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gTvLoadingPage:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$3(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener$1;->this$1:Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->access$1(Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;)Lic/buzzebeeslib/activity/Place2Activity;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$string;->place_message_get_location_4:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/Place2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    return-void
.end method
