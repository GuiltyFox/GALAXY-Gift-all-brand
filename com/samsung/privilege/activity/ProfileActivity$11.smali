.class Lcom/samsung/privilege/activity/ProfileActivity$11;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/ProfileActivity;

.field final synthetic val$textNotificationOFF:Landroid/widget/TextView;

.field final synthetic val$textNotificationON:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/ProfileActivity;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$11;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/ProfileActivity$11;->val$textNotificationON:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/privilege/activity/ProfileActivity$11;->val$textNotificationOFF:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Z)V
    .registers 4
    .param p1, "on"    # Z

    .prologue
    .line 426
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1c

    .line 427
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$11;->val$textNotificationON:Landroid/widget/TextView;

    const-string/jumbo v1, "#2ba9e3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 428
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$11;->val$textNotificationOFF:Landroid/widget/TextView;

    const-string/jumbo v1, "#ebebeb"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 433
    :goto_1b
    return-void

    .line 430
    :cond_1c
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$11;->val$textNotificationON:Landroid/widget/TextView;

    const-string/jumbo v1, "#ebebeb"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 431
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$11;->val$textNotificationOFF:Landroid/widget/TextView;

    const-string/jumbo v1, "#2ba9e3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1b
.end method
