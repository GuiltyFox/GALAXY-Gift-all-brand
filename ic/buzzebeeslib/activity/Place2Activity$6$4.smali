.class Lic/buzzebeeslib/activity/Place2Activity$6$4;
.super Ljava/lang/Object;
.source "Place2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/Place2Activity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/Place2Activity$6;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/Place2Activity$6;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity$6$4;->this$1:Lic/buzzebeeslib/activity/Place2Activity$6;

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 600
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$6$4;->this$1:Lic/buzzebeeslib/activity/Place2Activity$6;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity$6;->access$0(Lic/buzzebeeslib/activity/Place2Activity$6;)Lic/buzzebeeslib/activity/Place2Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lic/buzzebeeslib/activity/Place2Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 601
    return-void
.end method
