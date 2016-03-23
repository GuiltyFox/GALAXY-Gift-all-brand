.class Lcom/samsung/privilege/activity/ProfileActivity$2;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/ProfileActivity;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$2;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$2;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/privilege/activity/ProfileActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 240
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$2;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/privilege/activity/ProfileActivity;->openContextMenu(Landroid/view/View;)V

    .line 241
    return-void
.end method
