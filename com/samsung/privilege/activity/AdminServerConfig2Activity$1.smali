.class Lcom/samsung/privilege/activity/AdminServerConfig2Activity$1;
.super Ljava/lang/Object;
.source "AdminServerConfig2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->doUseThisSetting(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AdminServerConfig2Activity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$1;->this$0:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 159
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 160
    return-void
.end method
