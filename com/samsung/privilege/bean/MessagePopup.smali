.class public Lcom/samsung/privilege/bean/MessagePopup;
.super Ljava/lang/Object;
.source "MessagePopup.java"


# instance fields
.field public badgeAlert:Lcom/samsung/privilege/bean/BadgeAlert;

.field public message_id:Ljava/lang/String;

.field public message_text:Ljava/lang/String;

.field public message_type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MessagePopup;->message_type:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MessagePopup;->message_id:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MessagePopup;->message_text:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/bean/MessagePopup;->badgeAlert:Lcom/samsung/privilege/bean/BadgeAlert;

    .line 13
    iput-object p1, p0, Lcom/samsung/privilege/bean/MessagePopup;->message_type:Ljava/lang/String;

    .line 14
    return-void
.end method
