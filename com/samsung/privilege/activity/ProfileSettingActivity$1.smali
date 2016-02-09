.class Lcom/samsung/privilege/activity/ProfileSettingActivity$1;
.super Ljava/lang/Object;
.source "ProfileSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/ProfileSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$1;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 397
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$1;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    invoke-static {v0, v2}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity;Z)V

    .line 398
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$1;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->showDialog(I)V

    .line 399
    return v2
.end method
