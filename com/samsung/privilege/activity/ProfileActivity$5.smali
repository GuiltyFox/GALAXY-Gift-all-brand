.class Lcom/samsung/privilege/activity/ProfileActivity$5;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity;->i()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity;)V
    .registers 2

    .prologue
    .line 311
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$5;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    .line 314
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$5;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    const v1, 0x7f1001e3

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$5;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    const v1, 0x7f1001e7

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 316
    if-eqz v3, :cond_46

    const-string/jumbo v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 317
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$5;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$5;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/ProfileActivity;->a(Lcom/samsung/privilege/activity/ProfileActivity;)Landroid/os/Handler;

    move-result-object v1

    const-string/jumbo v4, "Profile"

    const-string/jumbo v5, "Change Mobile"

    const-string/jumbo v6, "Change Mobile"

    invoke-static/range {v0 .. v6}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :goto_45
    return-void

    .line 319
    :cond_46
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$5;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$5;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/ProfileActivity;->a(Lcom/samsung/privilege/activity/ProfileActivity;)Landroid/os/Handler;

    move-result-object v1

    const-string/jumbo v3, "Profile"

    const-string/jumbo v4, "Change Mobile"

    const-string/jumbo v5, "Change Mobile"

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45
.end method
