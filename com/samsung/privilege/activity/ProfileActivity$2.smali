.class Lcom/samsung/privilege/activity/ProfileActivity$2;
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
    .line 260
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$2;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$2;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/privilege/activity/ProfileActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 264
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$2;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/privilege/activity/ProfileActivity;->openContextMenu(Landroid/view/View;)V

    .line 265
    return-void
.end method
