.class Lic/buzzebeeslib/activity/Place2Activity$7;
.super Ljava/lang/Object;
.source "Place2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/Place2Activity;->getLocationByGPS()V
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
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity$7;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 620
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$7;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gTvLoadingPage:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$3(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/Place2Activity$7;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    sget v2, Lic/buzzebeeslib/R$string;->place_message_get_location_2:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/Place2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$7;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gTvLoadingPage:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$3(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$7;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gPbLoadingPage:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$4(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 623
    return-void
.end method
