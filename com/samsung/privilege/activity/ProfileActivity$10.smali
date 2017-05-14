.class Lcom/samsung/privilege/activity/ProfileActivity$10;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity;->i()V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ArrayAdapter;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lcom/samsung/privilege/activity/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;[Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 418
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$10;->d:Lcom/samsung/privilege/activity/ProfileActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/ProfileActivity$10;->a:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lcom/samsung/privilege/activity/ProfileActivity$10;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/samsung/privilege/activity/ProfileActivity$10;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 421
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$10;->d:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$10;->d:Lcom/samsung/privilege/activity/ProfileActivity;

    const v2, 0x7f090322

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$10;->a:Landroid/widget/ArrayAdapter;

    new-instance v2, Lcom/samsung/privilege/activity/ProfileActivity$10$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/ProfileActivity$10$1;-><init>(Lcom/samsung/privilege/activity/ProfileActivity$10;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 428
    return-void
.end method
