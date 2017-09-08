.class Lcom/samsung/privilege/activity/ProfileActivity$24$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity$24;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/ProfileActivity$24;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity$24;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$24$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$24;

    iput-object p2, p0, Lcom/samsung/privilege/activity/ProfileActivity$24$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$24$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$24;

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity$24;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$24$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->a(Lcom/samsung/privilege/activity/ProfileActivity;Ljava/lang/String;)V

    .line 1172
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$24$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$24;

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity$24;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bzbs/data/AppSetting;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1173
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$24$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$24;

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity$24;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileActivity;->f(Lcom/samsung/privilege/activity/ProfileActivity;)V

    .line 1175
    :cond_24
    return-void
.end method
