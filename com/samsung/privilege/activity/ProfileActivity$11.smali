.class Lcom/samsung/privilege/activity/ProfileActivity$11;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity;->i()V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/samsung/privilege/activity/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 4

    .prologue
    .line 433
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$11;->c:Lcom/samsung/privilege/activity/ProfileActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/ProfileActivity$11;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/privilege/activity/ProfileActivity$11;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    .prologue
    .line 436
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1c

    .line 437
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$11;->a:Landroid/widget/TextView;

    const-string/jumbo v1, "#2ba9e3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 438
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$11;->b:Landroid/widget/TextView;

    const-string/jumbo v1, "#ebebeb"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 443
    :goto_1b
    return-void

    .line 440
    :cond_1c
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$11;->a:Landroid/widget/TextView;

    const-string/jumbo v1, "#ebebeb"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$11;->b:Landroid/widget/TextView;

    const-string/jumbo v1, "#2ba9e3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1b
.end method
