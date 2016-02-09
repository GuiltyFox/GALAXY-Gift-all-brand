.class Lic/buzzebeeslib/activity/Place2Activity$3;
.super Ljava/lang/Object;
.source "Place2Activity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity$3;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/Place2Activity$3;->val$etTextSearch:Landroid/widget/EditText;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 263
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_a

    .line 264
    sparse-switch p2, :sswitch_data_4c

    .line 281
    :cond_a
    :goto_a
    return v1

    .line 267
    :sswitch_b
    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->TAG:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/activity/Place2Activity;->access$15()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onClick etTextSearch"

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$3;->val$etTextSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 269
    .local v6, "textSearch":Ljava/lang/String;
    if-eqz v6, :cond_44

    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 270
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$3;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lic/buzzebeeslib/activity/Place2Activity;->access$28(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/String;)V

    .line 274
    :goto_31
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$3;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iget-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity$3;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLat:D
    invoke-static {v2}, Lic/buzzebeeslib/activity/Place2Activity;->access$11(Lic/buzzebeeslib/activity/Place2Activity;)D

    move-result-wide v2

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$3;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLon:D
    invoke-static {v4}, Lic/buzzebeeslib/activity/Place2Activity;->access$12(Lic/buzzebeeslib/activity/Place2Activity;)D

    move-result-wide v4

    # invokes: Lic/buzzebeeslib/activity/Place2Activity;->fetchPlaces(ZDD)V
    invoke-static/range {v0 .. v5}, Lic/buzzebeeslib/activity/Place2Activity;->access$13(Lic/buzzebeeslib/activity/Place2Activity;ZDD)V

    .line 276
    const/4 v1, 0x1

    goto :goto_a

    .line 272
    :cond_44
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$3;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    const-string v2, ""

    invoke-static {v0, v2}, Lic/buzzebeeslib/activity/Place2Activity;->access$28(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/String;)V

    goto :goto_31

    .line 264
    :sswitch_data_4c
    .sparse-switch
        0x17 -> :sswitch_b
        0x42 -> :sswitch_b
    .end sparse-switch
.end method
