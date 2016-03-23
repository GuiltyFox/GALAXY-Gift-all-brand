.class public Lcom/bzbs/bean/MessagePopup;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public badgeAlert:Lcom/bzbs/bean/BadgeAlert;

.field public message_id:Ljava/lang/String;

.field public message_text:Ljava/lang/String;

.field public message_type:Ljava/lang/String;

.field public point_from:Ljava/lang/String;

.field public point_number:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    .line 9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/MessagePopup;->point_from:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/bzbs/bean/MessagePopup;->point_number:I

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    .line 9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/MessagePopup;->point_from:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/bzbs/bean/MessagePopup;->point_number:I

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    .line 22
    iput-object p1, p0, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    .line 23
    return-void
.end method
