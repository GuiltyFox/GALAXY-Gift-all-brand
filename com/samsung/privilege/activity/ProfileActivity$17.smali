.class Lcom/samsung/privilege/activity/ProfileActivity$17;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity;->processJsonCategory(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/ProfileActivity;

.field final synthetic val$textCategoryOff:Landroid/widget/TextView;

.field final synthetic val$textCategoryOn:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/ProfileActivity;

    .prologue
    .line 993
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$17;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/ProfileActivity$17;->val$textCategoryOff:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/privilege/activity/ProfileActivity$17;->val$textCategoryOn:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Z)V
    .registers 4
    .param p1, "on"    # Z

    .prologue
    .line 996
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1c

    .line 997
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$17;->val$textCategoryOff:Landroid/widget/TextView;

    const-string/jumbo v1, "#ebebeb"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 998
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$17;->val$textCategoryOn:Landroid/widget/TextView;

    const-string/jumbo v1, "#2ba9e3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1003
    :goto_1b
    return-void

    .line 1000
    :cond_1c
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$17;->val$textCategoryOff:Landroid/widget/TextView;

    const-string/jumbo v1, "#2ba9e3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1001
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$17;->val$textCategoryOn:Landroid/widget/TextView;

    const-string/jumbo v1, "#ebebeb"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1b
.end method
