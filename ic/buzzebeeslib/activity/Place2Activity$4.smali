.class Lic/buzzebeeslib/activity/Place2Activity$4;
.super Ljava/lang/Object;
.source "Place2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$etTextSearch:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/Place2Activity;Landroid/widget/EditText;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity$4;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/Place2Activity$4;->val$etTextSearch:Landroid/widget/EditText;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 289
    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->TAG:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/activity/Place2Activity;->access$15()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick imgDeleteTextSearch"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$4;->val$etTextSearch:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$4;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    const-string v1, ""

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/Place2Activity;->access$28(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$4;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity$4;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLat:D
    invoke-static {v2}, Lic/buzzebeeslib/activity/Place2Activity;->access$11(Lic/buzzebeeslib/activity/Place2Activity;)D

    move-result-wide v2

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$4;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLon:D
    invoke-static {v4}, Lic/buzzebeeslib/activity/Place2Activity;->access$12(Lic/buzzebeeslib/activity/Place2Activity;)D

    move-result-wide v4

    # invokes: Lic/buzzebeeslib/activity/Place2Activity;->fetchPlaces(ZDD)V
    invoke-static/range {v0 .. v5}, Lic/buzzebeeslib/activity/Place2Activity;->access$13(Lic/buzzebeeslib/activity/Place2Activity;ZDD)V

    .line 293
    return-void
.end method
