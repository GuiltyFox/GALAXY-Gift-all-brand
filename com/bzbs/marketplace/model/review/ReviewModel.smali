.class public Lcom/bzbs/marketplace/model/review/ReviewModel;
.super Ljava/lang/Object;
.source "ReviewModel.java"


# instance fields
.field public AgencyId:I

.field public AgencyName:Ljava/lang/String;

.field public AppId:Ljava/lang/String;

.field public BuzzKey:Ljava/lang/String;

.field public CampaignId:I

.field public CommentCount:I

.field public CreatedTime:J

.field public ETag:Ljava/lang/String;

.field public Height:I

.field public ImageUrl:Ljava/lang/String;

.field public IsApproved:Z

.field public IsLiked:Z

.field public IsRead:Z

.field public IsReply:Z

.field public Likes:I

.field public LocationAgencyId:I

.field public Message:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public Os:Ljava/lang/String;

.field public PartitionKey:Ljava/lang/String;

.field public PhotoId:Ljava/lang/String;

.field public PlaceId:I

.field public PlaceName:Ljava/lang/String;

.field public PostId:Ljava/lang/String;

.field public Rating:I

.field public RowKey:Ljava/lang/String;

.field public Sticker:Ljava/lang/String;

.field public Timestamp:I

.field public Type:Ljava/lang/String;

.field public UserId:Ljava/lang/String;

.field public Width:I

.field public buzzebees:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;

.field public file:Ljava/io/File;

.field public header:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->header:Z

    return-void
.end method


# virtual methods
.method public getAgencyId()I
    .registers 2

    .prologue
    .line 218
    iget v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->AgencyId:I

    return v0
.end method

.method public getAgencyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->AgencyName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->AppId:Ljava/lang/String;

    return-object v0
.end method

.method public getBuzzKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->BuzzKey:Ljava/lang/String;

    return-object v0
.end method

.method public getBuzzebees()Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->buzzebees:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;

    return-object v0
.end method

.method public getCampaignId()I
    .registers 2

    .prologue
    .line 262
    iget v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->CampaignId:I

    return v0
.end method

.method public getCommentCount()I
    .registers 2

    .prologue
    .line 322
    iget v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->CommentCount:I

    return v0
.end method

.method public getCreatedTime()J
    .registers 3

    .prologue
    .line 210
    iget-wide v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->CreatedTime:J

    return-wide v0
.end method

.method public getETag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->ETag:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->file:Ljava/io/File;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 270
    iget v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->Height:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->ImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLikes()I
    .registers 2

    .prologue
    .line 326
    iget v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->Likes:I

    return v0
.end method

.method public getLocationAgencyId()I
    .registers 2

    .prologue
    .line 330
    iget v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->LocationAgencyId:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->Message:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->Os:Ljava/lang/String;

    return-object v0
.end method

.method public getPartitionKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->PartitionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->PhotoId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceId()I
    .registers 2

    .prologue
    .line 286
    iget v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->PlaceId:I

    return v0
.end method

.method public getPlaceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->PlaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getPostId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->PostId:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()I
    .registers 2

    .prologue
    .line 230
    iget v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->Rating:I

    return v0
.end method

.method public getRowKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->RowKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSticker()Ljava/lang/String;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->Sticker:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()I
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->Timestamp:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 274
    iget v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->Width:I

    return v0
.end method

.method public isApproved()Z
    .registers 2

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->IsApproved:Z

    return v0
.end method

.method public isHeader()Z
    .registers 2

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->header:Z

    return v0
.end method

.method public isLiked()Z
    .registers 2

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->IsLiked:Z

    return v0
.end method

.method public isRead()Z
    .registers 2

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->IsRead:Z

    return v0
.end method

.method public isReply()Z
    .registers 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->IsReply:Z

    return v0
.end method

.method public setAgencyId(I)V
    .registers 2

    .prologue
    .line 94
    iput p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->AgencyId:I

    .line 95
    return-void
.end method

.method public setAgencyName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 158
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->AgencyName:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 182
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->AppId:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setBuzzKey(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 154
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->BuzzKey:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setBuzzebees(Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;)V
    .registers 2

    .prologue
    .line 350
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->buzzebees:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;

    .line 351
    return-void
.end method

.method public setCampaignId(I)V
    .registers 2

    .prologue
    .line 138
    iput p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->CampaignId:I

    .line 139
    return-void
.end method

.method public setCommentCount(I)V
    .registers 2

    .prologue
    .line 198
    iput p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->CommentCount:I

    .line 199
    return-void
.end method

.method public setCreatedTime(J)V
    .registers 4

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->CreatedTime:J

    .line 87
    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 186
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->ETag:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .prologue
    .line 346
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->file:Ljava/io/File;

    .line 347
    return-void
.end method

.method public setHeader(Z)V
    .registers 2

    .prologue
    .line 338
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->header:Z

    .line 339
    return-void
.end method

.method public setHeight(I)V
    .registers 2

    .prologue
    .line 146
    iput p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->Height:I

    .line 147
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 166
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->ImageUrl:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setIsApproved(Z)V
    .registers 2

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->IsApproved:Z

    .line 127
    return-void
.end method

.method public setIsLiked(Z)V
    .registers 2

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->IsLiked:Z

    .line 111
    return-void
.end method

.method public setIsRead(Z)V
    .registers 2

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->IsRead:Z

    .line 115
    return-void
.end method

.method public setIsReply(Z)V
    .registers 2

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->IsReply:Z

    .line 143
    return-void
.end method

.method public setLikes(I)V
    .registers 2

    .prologue
    .line 202
    iput p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->Likes:I

    .line 203
    return-void
.end method

.method public setLocationAgencyId(I)V
    .registers 2

    .prologue
    .line 206
    iput p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->LocationAgencyId:I

    .line 207
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->Message:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 122
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->Name:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->Os:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setPartitionKey(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 194
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->PartitionKey:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setPhotoId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 174
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->PhotoId:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setPlaceId(I)V
    .registers 2

    .prologue
    .line 162
    iput p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->PlaceId:I

    .line 163
    return-void
.end method

.method public setPlaceName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->PlaceName:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setPostId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 170
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->PostId:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setRating(I)V
    .registers 2

    .prologue
    .line 106
    iput p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->Rating:I

    .line 107
    return-void
.end method

.method public setRowKey(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->RowKey:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setSticker(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 134
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->Sticker:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setTimestamp(I)V
    .registers 2

    .prologue
    .line 118
    iput p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->Timestamp:I

    .line 119
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 178
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->Type:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 190
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->UserId:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .prologue
    .line 150
    iput p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel;->Width:I

    .line 151
    return-void
.end method
