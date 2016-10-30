.class Lcom/samsung/privilege/activity/ProfileActivity$20$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity$20;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/ProfileActivity$20;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity$20;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$20$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$20;

    iput-object p2, p0, Lcom/samsung/privilege/activity/ProfileActivity$20$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$20$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$20;

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity$20;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$20$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->a(Lcom/samsung/privilege/activity/ProfileActivity;Ljava/lang/String;)V

    .line 1124
    return-void
.end method
