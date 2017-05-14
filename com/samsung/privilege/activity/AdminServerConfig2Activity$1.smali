.class Lcom/samsung/privilege/activity/AdminServerConfig2Activity$1;
.super Ljava/lang/Object;
.source "AdminServerConfig2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->doUseThisSetting(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AdminServerConfig2Activity;)V
    .registers 2

    .prologue
    .line 160
    iput-object p1, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$1;->a:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .prologue
    .line 162
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 163
    return-void
.end method
