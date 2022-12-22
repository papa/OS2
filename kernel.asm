
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	41813103          	ld	sp,1048(sp) # 8000a418 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7f0050ef          	jal	ra,8000580c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    sd x0, 0(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	3bd020ef          	jal	ra,80003c44 <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    8000108c:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001090:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001094:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001098:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001108:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001218:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000121c:	00b29a63          	bne	t0,a1,80001230 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001220:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001224:	fe029ae3          	bnez	t0,80001218 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001228:	00000513          	li	a0,0
    jr ra                  # Return.
    8000122c:	00008067          	ret

0000000080001230 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001230:	00100513          	li	a0,1
    80001234:	00008067          	ret

0000000080001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001238:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000123c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001240:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001244:	0085b083          	ld	ra,8(a1)

    ret
    80001248:	00008067          	ret

000000008000124c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000124c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001250:	00853083          	ld	ra,8(a0)

    80001254:	00008067          	ret

0000000080001258 <_Z6strcpyPKcPc>:
//singleton slab allocator
static slab_allocator_t* slabAllocator = nullptr;

//helping functions
void strcpy(const char* src, char* dst)
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    while(*src != '\0')
    80001264:	00054783          	lbu	a5,0(a0)
    80001268:	00078863          	beqz	a5,80001278 <_Z6strcpyPKcPc+0x20>
    {
        *dst = *src;
    8000126c:	00f58023          	sb	a5,0(a1)
        src++;
    80001270:	00150513          	addi	a0,a0,1
    while(*src != '\0')
    80001274:	ff1ff06f          	j	80001264 <_Z6strcpyPKcPc+0xc>
    }
}
    80001278:	00813403          	ld	s0,8(sp)
    8000127c:	01010113          	addi	sp,sp,16
    80001280:	00008067          	ret

0000000080001284 <_Z19slab_allocator_initP14buddyAllocator>:

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    80001284:	fe010113          	addi	sp,sp,-32
    80001288:	00113c23          	sd	ra,24(sp)
    8000128c:	00813823          	sd	s0,16(sp)
    80001290:	00913423          	sd	s1,8(sp)
    80001294:	01213023          	sd	s2,0(sp)
    80001298:	02010413          	addi	s0,sp,32
    8000129c:	00050493          	mv	s1,a0
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);
    800012a0:	0e050913          	addi	s2,a0,224

    slabAllocatorLocal->buddy = buddy;
    800012a4:	0ea53023          	sd	a0,224(a0)
    slabAllocatorLocal->cacheList = nullptr;
    800012a8:	0e053423          	sd	zero,232(a0)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800012ac:	00000713          	li	a4,0
    800012b0:	0180006f          	j	800012c8 <_Z19slab_allocator_initP14buddyAllocator+0x44>
        slabAllocatorLocal->cachesBuffers[i] = nullptr;
    800012b4:	00270793          	addi	a5,a4,2
    800012b8:	00379793          	slli	a5,a5,0x3
    800012bc:	00f487b3          	add	a5,s1,a5
    800012c0:	0e07b023          	sd	zero,224(a5)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800012c4:	00170713          	addi	a4,a4,1
    800012c8:	00c00793          	li	a5,12
    800012cc:	fee7f4e3          	bgeu	a5,a4,800012b4 <_Z19slab_allocator_initP14buddyAllocator+0x30>

    //TODO
    //char* name = "Cache of caches";
    strcpy("Cache of caches", slabAllocatorLocal->cacheOfCaches.cacheName);
    800012d0:	15848593          	addi	a1,s1,344
    800012d4:	00007517          	auipc	a0,0x7
    800012d8:	d4c50513          	addi	a0,a0,-692 # 80008020 <CONSOLE_STATUS+0x10>
    800012dc:	00000097          	auipc	ra,0x0
    800012e0:	f7c080e7          	jalr	-132(ra) # 80001258 <_Z6strcpyPKcPc>
    slabAllocatorLocal->cacheOfCaches.next = nullptr;
    800012e4:	3404bc23          	sd	zero,856(s1)
    slabAllocatorLocal->cacheOfCaches.prev = nullptr;
    800012e8:	3604b023          	sd	zero,864(s1)
    slabAllocatorLocal->cacheOfCaches.ctor = nullptr;
    800012ec:	3804b823          	sd	zero,912(s1)
    slabAllocatorLocal->cacheOfCaches.dtor = nullptr;
    800012f0:	3804bc23          	sd	zero,920(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_empty = nullptr;
    800012f4:	3604b423          	sd	zero,872(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_full = nullptr;
    800012f8:	3604b823          	sd	zero,880(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_partial = nullptr;
    800012fc:	3604bc23          	sd	zero,888(s1)
    slabAllocatorLocal->cacheOfCaches.slab_size = CACHE_OF_CACHES_SLAB_SIZE;
    80001300:	00200793          	li	a5,2
    80001304:	38f4b023          	sd	a5,896(s1)
    slabAllocatorLocal->cacheOfCaches.obj_size = sizeof(kmem_cache_t);
    80001308:	24800793          	li	a5,584
    8000130c:	38f4b423          	sd	a5,904(s1)
    return slabAllocatorLocal;
}
    80001310:	00090513          	mv	a0,s2
    80001314:	01813083          	ld	ra,24(sp)
    80001318:	01013403          	ld	s0,16(sp)
    8000131c:	00813483          	ld	s1,8(sp)
    80001320:	00013903          	ld	s2,0(sp)
    80001324:	02010113          	addi	sp,sp,32
    80001328:	00008067          	ret

000000008000132c <_Z14allocateObjectP6slab_s>:

void* allocateObject(slab_t* slab)
{
    8000132c:	ff010113          	addi	sp,sp,-16
    80001330:	00813423          	sd	s0,8(sp)
    80001334:	01010413          	addi	s0,sp,16
    80001338:	00050593          	mv	a1,a0
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    8000133c:	00000793          	li	a5,0
    80001340:	0185b703          	ld	a4,24(a1)
    80001344:	04e7f663          	bgeu	a5,a4,80001390 <_Z14allocateObjectP6slab_s+0x64>
    {
        size_t mask = 1 << (i%8);
    80001348:	0077f713          	andi	a4,a5,7
    8000134c:	00100613          	li	a2,1
    80001350:	00e616bb          	sllw	a3,a2,a4
        if((uint8)slab->allocated[i/8] & mask)
    80001354:	0037d713          	srli	a4,a5,0x3
    80001358:	00e58733          	add	a4,a1,a4
    8000135c:	03074703          	lbu	a4,48(a4)
    80001360:	00d77733          	and	a4,a4,a3
    80001364:	00071663          	bnez	a4,80001370 <_Z14allocateObjectP6slab_s+0x44>
    for(size_t i = 0;i < slab->numOfObjects;i++)
    80001368:	00178793          	addi	a5,a5,1
    8000136c:	fd5ff06f          	j	80001340 <_Z14allocateObjectP6slab_s+0x14>
        {
            addr = (void*)((size_t)slab->startAddress + sizeof(slab_t)+ i*slab->owner->obj_size);
    80001370:	0285b503          	ld	a0,40(a1)
    80001374:	0105b703          	ld	a4,16(a1)
    80001378:	23073703          	ld	a4,560(a4)
    8000137c:	02f70733          	mul	a4,a4,a5
    80001380:	00e50533          	add	a0,a0,a4
    80001384:	05050513          	addi	a0,a0,80
            index = i;
    80001388:	0007879b          	sext.w	a5,a5
            break;
    8000138c:	00c0006f          	j	80001398 <_Z14allocateObjectP6slab_s+0x6c>
    void* addr = nullptr;
    80001390:	00000513          	li	a0,0
    int index = -1;
    80001394:	fff00793          	li	a5,-1
        }
    }
    if(addr == nullptr)
    80001398:	04050063          	beqz	a0,800013d8 <_Z14allocateObjectP6slab_s+0xac>
        return nullptr;

    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
    8000139c:	41f7d69b          	sraiw	a3,a5,0x1f
    800013a0:	01d6d69b          	srliw	a3,a3,0x1d
    800013a4:	00f687bb          	addw	a5,a3,a5
    800013a8:	4037d71b          	sraiw	a4,a5,0x3
    800013ac:	00e58733          	add	a4,a1,a4
    800013b0:	03070603          	lb	a2,48(a4)
    800013b4:	0077f793          	andi	a5,a5,7
    800013b8:	40d787bb          	subw	a5,a5,a3
    800013bc:	00100693          	li	a3,1
    800013c0:	00f697bb          	sllw	a5,a3,a5
    800013c4:	00f667b3          	or	a5,a2,a5
    800013c8:	02f70823          	sb	a5,48(a4)
    slab->numOfAllocatedObjects++;
    800013cc:	0205b783          	ld	a5,32(a1)
    800013d0:	00178793          	addi	a5,a5,1
    800013d4:	02f5b023          	sd	a5,32(a1)

    return addr;
}
    800013d8:	00813403          	ld	s0,8(sp)
    800013dc:	01010113          	addi	sp,sp,16
    800013e0:	00008067          	ret

00000000800013e4 <_Z4fullP6slab_s>:
bool full(slab_t* slab)
{
    800013e4:	ff010113          	addi	sp,sp,-16
    800013e8:	00813423          	sd	s0,8(sp)
    800013ec:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == slab->numOfObjects;
    800013f0:	02053783          	ld	a5,32(a0)
    800013f4:	01853503          	ld	a0,24(a0)
    800013f8:	40f50533          	sub	a0,a0,a5
}
    800013fc:	00153513          	seqz	a0,a0
    80001400:	00813403          	ld	s0,8(sp)
    80001404:	01010113          	addi	sp,sp,16
    80001408:	00008067          	ret

000000008000140c <_Z5emptyP6slab_s>:

bool empty(slab_t* slab)
{
    8000140c:	ff010113          	addi	sp,sp,-16
    80001410:	00813423          	sd	s0,8(sp)
    80001414:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == 0;
    80001418:	02053503          	ld	a0,32(a0)
}
    8000141c:	00153513          	seqz	a0,a0
    80001420:	00813403          	ld	s0,8(sp)
    80001424:	01010113          	addi	sp,sp,16
    80001428:	00008067          	ret

000000008000142c <_Z16putPartialToFullP12kmem_cache_s>:

void putPartialToFull(kmem_cache_t* cachep)
{
    8000142c:	ff010113          	addi	sp,sp,-16
    80001430:	00813423          	sd	s0,8(sp)
    80001434:	01010413          	addi	s0,sp,16
    slab_t* slab = cachep->slabs_partial;
    80001438:	22053783          	ld	a5,544(a0)
    cachep->slabs_partial = cachep->slabs_partial->next;
    8000143c:	0087b703          	ld	a4,8(a5)
    80001440:	22e53023          	sd	a4,544(a0)
    if(cachep->slabs_partial!=nullptr)
    80001444:	00070463          	beqz	a4,8000144c <_Z16putPartialToFullP12kmem_cache_s+0x20>
        cachep->slabs_partial = nullptr;
    80001448:	22053023          	sd	zero,544(a0)
    slab->next = cachep->slabs_full;
    8000144c:	21853703          	ld	a4,536(a0)
    80001450:	00e7b423          	sd	a4,8(a5)
    if(cachep->slabs_full != nullptr)
    80001454:	21853703          	ld	a4,536(a0)
    80001458:	00070463          	beqz	a4,80001460 <_Z16putPartialToFullP12kmem_cache_s+0x34>
        cachep->slabs_full->prev = slab;
    8000145c:	00f73023          	sd	a5,0(a4)
    cachep->slabs_full = slab;
    80001460:	20f53c23          	sd	a5,536(a0)
    slab->prev = nullptr;
    80001464:	0007b023          	sd	zero,0(a5)
}
    80001468:	00813403          	ld	s0,8(sp)
    8000146c:	01010113          	addi	sp,sp,16
    80001470:	00008067          	ret

0000000080001474 <_Z17putEmptyToPartialP12kmem_cache_s>:

void putEmptyToPartial(kmem_cache_t* cachep)
{
    80001474:	ff010113          	addi	sp,sp,-16
    80001478:	00813423          	sd	s0,8(sp)
    8000147c:	01010413          	addi	s0,sp,16
    slab_t* slab = cachep->slabs_empty;
    80001480:	21053783          	ld	a5,528(a0)
    cachep->slabs_empty = cachep->slabs_empty->next;
    80001484:	0087b703          	ld	a4,8(a5)
    80001488:	20e53823          	sd	a4,528(a0)
    if(cachep->slabs_empty != nullptr)
    8000148c:	00070463          	beqz	a4,80001494 <_Z17putEmptyToPartialP12kmem_cache_s+0x20>
        cachep->slabs_empty = nullptr;
    80001490:	20053823          	sd	zero,528(a0)
    slab->next = cachep->slabs_partial;
    80001494:	22053703          	ld	a4,544(a0)
    80001498:	00e7b423          	sd	a4,8(a5)
    if(cachep->slabs_partial != nullptr)
    8000149c:	22053703          	ld	a4,544(a0)
    800014a0:	00070463          	beqz	a4,800014a8 <_Z17putEmptyToPartialP12kmem_cache_s+0x34>
        cachep->slabs_partial->prev = slab;
    800014a4:	00f73023          	sd	a5,0(a4)
    cachep->slabs_partial = slab;
    800014a8:	22f53023          	sd	a5,544(a0)
    slab->prev = nullptr;
    800014ac:	0007b023          	sd	zero,0(a5)
}
    800014b0:	00813403          	ld	s0,8(sp)
    800014b4:	01010113          	addi	sp,sp,16
    800014b8:	00008067          	ret

00000000800014bc <_Z12allocateSlabP12kmem_cache_s>:

void allocateSlab(kmem_cache_t* cachep)
{
    800014bc:	fe010113          	addi	sp,sp,-32
    800014c0:	00113c23          	sd	ra,24(sp)
    800014c4:	00813823          	sd	s0,16(sp)
    800014c8:	00913423          	sd	s1,8(sp)
    800014cc:	02010413          	addi	s0,sp,32
    800014d0:	00050493          	mv	s1,a0
    slab_t* newSlab = (slab_t*)buddy_alloc(slabAllocator->buddy,cachep->slab_size*BLOCK_SIZE);
    800014d4:	22853583          	ld	a1,552(a0)
    800014d8:	00c59593          	slli	a1,a1,0xc
    800014dc:	00009797          	auipc	a5,0x9
    800014e0:	fd47b783          	ld	a5,-44(a5) # 8000a4b0 <_ZL13slabAllocator>
    800014e4:	0007b503          	ld	a0,0(a5)
    800014e8:	00001097          	auipc	ra,0x1
    800014ec:	1b8080e7          	jalr	440(ra) # 800026a0 <_Z11buddy_allocP14buddyAllocatorm>
    newSlab->next = cachep->slabs_empty;
    800014f0:	2104b783          	ld	a5,528(s1)
    800014f4:	00f53423          	sd	a5,8(a0)
    if(cachep->slabs_empty != nullptr)
    800014f8:	00078463          	beqz	a5,80001500 <_Z12allocateSlabP12kmem_cache_s+0x44>
        cachep->slabs_empty->prev = newSlab;
    800014fc:	00a7b023          	sd	a0,0(a5)
    cachep->slabs_empty = newSlab;
    80001500:	20a4b823          	sd	a0,528(s1)
    newSlab->prev = nullptr;
    80001504:	00053023          	sd	zero,0(a0)
    newSlab->numOfAllocatedObjects = 0;
    80001508:	02053023          	sd	zero,32(a0)
    newSlab->owner = cachep;
    8000150c:	00953823          	sd	s1,16(a0)
    newSlab->startAddress = (void*)newSlab;
    80001510:	02a53423          	sd	a0,40(a0)
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    80001514:	2284b683          	ld	a3,552(s1)
    80001518:	00c69693          	slli	a3,a3,0xc
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    8000151c:	fb068693          	addi	a3,a3,-80
    80001520:	2304b783          	ld	a5,560(s1)
    80001524:	02f6d6b3          	divu	a3,a3,a5
    80001528:	00d53c23          	sd	a3,24(a0)
    for(size_t i = 0; i < newSlab->numOfObjects / 8;i++)
    8000152c:	00000793          	li	a5,0
    80001530:	0036d713          	srli	a4,a3,0x3
    80001534:	00e7fa63          	bgeu	a5,a4,80001548 <_Z12allocateSlabP12kmem_cache_s+0x8c>
        newSlab->allocated[i] = 0;
    80001538:	00f50733          	add	a4,a0,a5
    8000153c:	02070823          	sb	zero,48(a4)
    for(size_t i = 0; i < newSlab->numOfObjects / 8;i++)
    80001540:	00178793          	addi	a5,a5,1
    80001544:	fedff06f          	j	80001530 <_Z12allocateSlabP12kmem_cache_s+0x74>
}
    80001548:	01813083          	ld	ra,24(sp)
    8000154c:	01013403          	ld	s0,16(sp)
    80001550:	00813483          	ld	s1,8(sp)
    80001554:	02010113          	addi	sp,sp,32
    80001558:	00008067          	ret

000000008000155c <_Z18getOptimalSlabSizem>:

size_t getOptimalSlabSize(size_t obj_size)
{
    8000155c:	ff010113          	addi	sp,sp,-16
    80001560:	00813423          	sd	s0,8(sp)
    80001564:	01010413          	addi	s0,sp,16
    size_t bestSize = BLOCK_SIZE;
    80001568:	000017b7          	lui	a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    8000156c:	05050713          	addi	a4,a0,80
    80001570:	00e7f663          	bgeu	a5,a4,8000157c <_Z18getOptimalSlabSizem+0x20>
        bestSize<<=1;
    80001574:	00179793          	slli	a5,a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    80001578:	ff5ff06f          	j	8000156c <_Z18getOptimalSlabSizem+0x10>
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;
    8000157c:	fb078593          	addi	a1,a5,-80 # fb0 <_entry-0x7ffff050>
    80001580:	02a5f5b3          	remu	a1,a1,a0

    for(int i = 1;i<=4;i++) //change constants
    80001584:	00100713          	li	a4,1
    80001588:	0080006f          	j	80001590 <_Z18getOptimalSlabSizem+0x34>
    8000158c:	0017071b          	addiw	a4,a4,1
    80001590:	00400693          	li	a3,4
    80001594:	02e6c063          	blt	a3,a4,800015b4 <_Z18getOptimalSlabSizem+0x58>
    {
        size_t newSize = bestSize << i;
    80001598:	00e79633          	sll	a2,a5,a4
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    8000159c:	fb060693          	addi	a3,a2,-80
    800015a0:	02a6f6b3          	remu	a3,a3,a0
        if(newWaste < optimalWaste)
    800015a4:	feb6f4e3          	bgeu	a3,a1,8000158c <_Z18getOptimalSlabSizem+0x30>
        {
            optimalWaste = newWaste;
    800015a8:	00068593          	mv	a1,a3
            bestSize = newSize;
    800015ac:	00060793          	mv	a5,a2
    800015b0:	fddff06f          	j	8000158c <_Z18getOptimalSlabSizem+0x30>
        }
    }

    return bestSize / BLOCK_SIZE;
}
    800015b4:	00c7d513          	srli	a0,a5,0xc
    800015b8:	00813403          	ld	s0,8(sp)
    800015bc:	01010113          	addi	sp,sp,16
    800015c0:	00008067          	ret

00000000800015c4 <_Z8findSlabP12kmem_cache_sPv>:

//finds the slab where objp is
slab_t* findSlab(kmem_cache_t* cachep, void* objp)
{
    800015c4:	ff010113          	addi	sp,sp,-16
    800015c8:	00813423          	sd	s0,8(sp)
    800015cc:	01010413          	addi	s0,sp,16
    800015d0:	00050693          	mv	a3,a0
    slab_t* slab = cachep->slabs_full;
    800015d4:	21853503          	ld	a0,536(a0)
    800015d8:	0080006f          	j	800015e0 <_Z8findSlabP12kmem_cache_sPv+0x1c>
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    800015dc:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    800015e0:	02050863          	beqz	a0,80001610 <_Z8findSlabP12kmem_cache_sPv+0x4c>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    800015e4:	01853783          	ld	a5,24(a0)
    800015e8:	01053703          	ld	a4,16(a0)
    800015ec:	23073703          	ld	a4,560(a4)
    800015f0:	02e787b3          	mul	a5,a5,a4
    800015f4:	00a787b3          	add	a5,a5,a0
    800015f8:	05078793          	addi	a5,a5,80
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    800015fc:	feb570e3          	bgeu	a0,a1,800015dc <_Z8findSlabP12kmem_cache_sPv+0x18>
    80001600:	fcf5fee3          	bgeu	a1,a5,800015dc <_Z8findSlabP12kmem_cache_sPv+0x18>
            return slab;
        slab = slab->next;
    }

    return nullptr;
}
    80001604:	00813403          	ld	s0,8(sp)
    80001608:	01010113          	addi	sp,sp,16
    8000160c:	00008067          	ret
    slab = cachep->slabs_partial;
    80001610:	2206b503          	ld	a0,544(a3)
    80001614:	0080006f          	j	8000161c <_Z8findSlabP12kmem_cache_sPv+0x58>
        slab = slab->next;
    80001618:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    8000161c:	fe0504e3          	beqz	a0,80001604 <_Z8findSlabP12kmem_cache_sPv+0x40>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001620:	01853783          	ld	a5,24(a0)
    80001624:	01053703          	ld	a4,16(a0)
    80001628:	23073703          	ld	a4,560(a4)
    8000162c:	02e787b3          	mul	a5,a5,a4
    80001630:	00a787b3          	add	a5,a5,a0
    80001634:	05078793          	addi	a5,a5,80
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    80001638:	feb570e3          	bgeu	a0,a1,80001618 <_Z8findSlabP12kmem_cache_sPv+0x54>
    8000163c:	fcf5fee3          	bgeu	a1,a5,80001618 <_Z8findSlabP12kmem_cache_sPv+0x54>
    80001640:	fc5ff06f          	j	80001604 <_Z8findSlabP12kmem_cache_sPv+0x40>

0000000080001644 <_Z19resetAllocatedIndexP6slab_si>:

void resetAllocatedIndex(slab_t* slab, int index)
{
    80001644:	ff010113          	addi	sp,sp,-16
    80001648:	00813423          	sd	s0,8(sp)
    8000164c:	01010413          	addi	s0,sp,16
    //TODO test it
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
    80001650:	41f5d79b          	sraiw	a5,a1,0x1f
    80001654:	01d7d79b          	srliw	a5,a5,0x1d
    80001658:	00b785bb          	addw	a1,a5,a1
    8000165c:	4035d71b          	sraiw	a4,a1,0x3
    80001660:	00e50533          	add	a0,a0,a4
    80001664:	03050703          	lb	a4,48(a0)
    80001668:	0075f593          	andi	a1,a1,7
    8000166c:	40f585bb          	subw	a1,a1,a5
    80001670:	00100793          	li	a5,1
    80001674:	00b795bb          	sllw	a1,a5,a1
    80001678:	fff5c593          	not	a1,a1
    8000167c:	00b775b3          	and	a1,a4,a1
    80001680:	02b50823          	sb	a1,48(a0)
}
    80001684:	00813403          	ld	s0,8(sp)
    80001688:	01010113          	addi	sp,sp,16
    8000168c:	00008067          	ret

0000000080001690 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>:

void removeFullSlab(kmem_cache_t * cachep, slab_t* slab)
{
    80001690:	ff010113          	addi	sp,sp,-16
    80001694:	00813423          	sd	s0,8(sp)
    80001698:	01010413          	addi	s0,sp,16
    if(slab->prev)
    8000169c:	0005b783          	ld	a5,0(a1)
    800016a0:	04078063          	beqz	a5,800016e0 <_Z14removeFullSlabP12kmem_cache_sP6slab_s+0x50>
    {
        slab->prev->next = slab->next;
    800016a4:	0085b703          	ld	a4,8(a1)
    800016a8:	00e7b423          	sd	a4,8(a5)
        slab->next->prev = slab->prev;
    800016ac:	0085b783          	ld	a5,8(a1)
    800016b0:	0005b703          	ld	a4,0(a1)
    800016b4:	00e7b023          	sd	a4,0(a5)
    else
    {
        slab->next->prev = nullptr;
        cachep->slabs_full = slab->next;
    }
    slab->next = cachep->slabs_partial;
    800016b8:	22053783          	ld	a5,544(a0)
    800016bc:	00f5b423          	sd	a5,8(a1)
    slab->prev = nullptr;
    800016c0:	0005b023          	sd	zero,0(a1)
    if(cachep->slabs_partial)
    800016c4:	22053783          	ld	a5,544(a0)
    800016c8:	00078463          	beqz	a5,800016d0 <_Z14removeFullSlabP12kmem_cache_sP6slab_s+0x40>
        cachep->slabs_partial->prev = slab;
    800016cc:	00b7b023          	sd	a1,0(a5)
    cachep->slabs_partial = slab;
    800016d0:	22b53023          	sd	a1,544(a0)
}
    800016d4:	00813403          	ld	s0,8(sp)
    800016d8:	01010113          	addi	sp,sp,16
    800016dc:	00008067          	ret
        slab->next->prev = nullptr;
    800016e0:	0085b783          	ld	a5,8(a1)
    800016e4:	0007b023          	sd	zero,0(a5)
        cachep->slabs_full = slab->next;
    800016e8:	0085b783          	ld	a5,8(a1)
    800016ec:	20f53c23          	sd	a5,536(a0)
    800016f0:	fc9ff06f          	j	800016b8 <_Z14removeFullSlabP12kmem_cache_sP6slab_s+0x28>

00000000800016f4 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>:

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    800016f4:	ff010113          	addi	sp,sp,-16
    800016f8:	00813423          	sd	s0,8(sp)
    800016fc:	01010413          	addi	s0,sp,16
    if(slab->prev)
    80001700:	0005b783          	ld	a5,0(a1)
    80001704:	04078063          	beqz	a5,80001744 <_Z17removePartialSlabP12kmem_cache_sP6slab_s+0x50>
    {
        slab->prev->next = slab->next;
    80001708:	0085b703          	ld	a4,8(a1)
    8000170c:	00e7b423          	sd	a4,8(a5)
        slab->next->prev = slab->prev;
    80001710:	0085b783          	ld	a5,8(a1)
    80001714:	0005b703          	ld	a4,0(a1)
    80001718:	00e7b023          	sd	a4,0(a5)
    else
    {
        slab->next->prev = nullptr;
        cachep->slabs_partial = slab->next;
    }
    slab->next = cachep->slabs_empty;
    8000171c:	21053783          	ld	a5,528(a0)
    80001720:	00f5b423          	sd	a5,8(a1)
    slab->prev = nullptr;
    80001724:	0005b023          	sd	zero,0(a1)
    if(cachep->slabs_empty)
    80001728:	21053783          	ld	a5,528(a0)
    8000172c:	00078463          	beqz	a5,80001734 <_Z17removePartialSlabP12kmem_cache_sP6slab_s+0x40>
        cachep->slabs_empty->prev = slab;
    80001730:	00b7b023          	sd	a1,0(a5)
    cachep->slabs_empty = slab;
    80001734:	20b53823          	sd	a1,528(a0)
}
    80001738:	00813403          	ld	s0,8(sp)
    8000173c:	01010113          	addi	sp,sp,16
    80001740:	00008067          	ret
        slab->next->prev = nullptr;
    80001744:	0085b783          	ld	a5,8(a1)
    80001748:	0007b023          	sd	zero,0(a5)
        cachep->slabs_partial = slab->next;
    8000174c:	0085b783          	ld	a5,8(a1)
    80001750:	22f53023          	sd	a5,544(a0)
    80001754:	fc9ff06f          	j	8000171c <_Z17removePartialSlabP12kmem_cache_sP6slab_s+0x28>

0000000080001758 <_Z13printSlabInfoP6slab_s>:

void printSlabInfo(slab_t* slab)
{
    80001758:	fe010113          	addi	sp,sp,-32
    8000175c:	00113c23          	sd	ra,24(sp)
    80001760:	00813823          	sd	s0,16(sp)
    80001764:	00913423          	sd	s1,8(sp)
    80001768:	02010413          	addi	s0,sp,32
    8000176c:	00050493          	mv	s1,a0
    KConsole::trapPrintString("Slab address ");
    80001770:	00007517          	auipc	a0,0x7
    80001774:	8c050513          	addi	a0,a0,-1856 # 80008030 <CONSOLE_STATUS+0x20>
    80001778:	00002097          	auipc	ra,0x2
    8000177c:	984080e7          	jalr	-1660(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt((size_t)slab);KConsole::trapPrintString("\n");
    80001780:	00000613          	li	a2,0
    80001784:	00a00593          	li	a1,10
    80001788:	0004851b          	sext.w	a0,s1
    8000178c:	00002097          	auipc	ra,0x2
    80001790:	9b4080e7          	jalr	-1612(ra) # 80003140 <_ZN8KConsole12trapPrintIntEiii>
    80001794:	00007517          	auipc	a0,0x7
    80001798:	db450513          	addi	a0,a0,-588 # 80008548 <CONSOLE_STATUS+0x538>
    8000179c:	00002097          	auipc	ra,0x2
    800017a0:	960080e7          	jalr	-1696(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Number of allocated objects ");
    800017a4:	00007517          	auipc	a0,0x7
    800017a8:	89c50513          	addi	a0,a0,-1892 # 80008040 <CONSOLE_STATUS+0x30>
    800017ac:	00002097          	auipc	ra,0x2
    800017b0:	950080e7          	jalr	-1712(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(slab->numOfAllocatedObjects);KConsole::trapPrintString("\n");
    800017b4:	00000613          	li	a2,0
    800017b8:	00a00593          	li	a1,10
    800017bc:	0204a503          	lw	a0,32(s1)
    800017c0:	00002097          	auipc	ra,0x2
    800017c4:	980080e7          	jalr	-1664(ra) # 80003140 <_ZN8KConsole12trapPrintIntEiii>
    800017c8:	00007517          	auipc	a0,0x7
    800017cc:	d8050513          	addi	a0,a0,-640 # 80008548 <CONSOLE_STATUS+0x538>
    800017d0:	00002097          	auipc	ra,0x2
    800017d4:	92c080e7          	jalr	-1748(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Number of objects ");
    800017d8:	00007517          	auipc	a0,0x7
    800017dc:	88850513          	addi	a0,a0,-1912 # 80008060 <CONSOLE_STATUS+0x50>
    800017e0:	00002097          	auipc	ra,0x2
    800017e4:	91c080e7          	jalr	-1764(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(slab->numOfObjects);KConsole::trapPrintString("\n");
    800017e8:	00000613          	li	a2,0
    800017ec:	00a00593          	li	a1,10
    800017f0:	0184a503          	lw	a0,24(s1)
    800017f4:	00002097          	auipc	ra,0x2
    800017f8:	94c080e7          	jalr	-1716(ra) # 80003140 <_ZN8KConsole12trapPrintIntEiii>
    800017fc:	00007517          	auipc	a0,0x7
    80001800:	d4c50513          	addi	a0,a0,-692 # 80008548 <CONSOLE_STATUS+0x538>
    80001804:	00002097          	auipc	ra,0x2
    80001808:	8f8080e7          	jalr	-1800(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
}
    8000180c:	01813083          	ld	ra,24(sp)
    80001810:	01013403          	ld	s0,16(sp)
    80001814:	00813483          	ld	s1,8(sp)
    80001818:	02010113          	addi	sp,sp,32
    8000181c:	00008067          	ret

0000000080001820 <_Z9kmem_initPvi>:

//slab allocator public interface-----------------------------------------------------------------------------
void kmem_init(void *space, int block_num)
{
    80001820:	ff010113          	addi	sp,sp,-16
    80001824:	00113423          	sd	ra,8(sp)
    80001828:	00813023          	sd	s0,0(sp)
    8000182c:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init(space, block_num);
    80001830:	00001097          	auipc	ra,0x1
    80001834:	158080e7          	jalr	344(ra) # 80002988 <_Z10buddy_initPvm>
    slabAllocator = slab_allocator_init(buddy);
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	a4c080e7          	jalr	-1460(ra) # 80001284 <_Z19slab_allocator_initP14buddyAllocator>
    80001840:	00009797          	auipc	a5,0x9
    80001844:	c6a7b823          	sd	a0,-912(a5) # 8000a4b0 <_ZL13slabAllocator>
}
    80001848:	00813083          	ld	ra,8(sp)
    8000184c:	00013403          	ld	s0,0(sp)
    80001850:	01010113          	addi	sp,sp,16
    80001854:	00008067          	ret

0000000080001858 <_Z16kmem_cache_allocP12kmem_cache_s>:
    newCache->slab_size = getOptimalSlabSize(size);
    return nullptr;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    80001858:	fe010113          	addi	sp,sp,-32
    8000185c:	00113c23          	sd	ra,24(sp)
    80001860:	00813823          	sd	s0,16(sp)
    80001864:	00913423          	sd	s1,8(sp)
    80001868:	01213023          	sd	s2,0(sp)
    8000186c:	02010413          	addi	s0,sp,32
    80001870:	00050493          	mv	s1,a0
    if(cachep->slabs_partial != nullptr)
    80001874:	22053503          	ld	a0,544(a0)
    80001878:	02051c63          	bnez	a0,800018b0 <_Z16kmem_cache_allocP12kmem_cache_s+0x58>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
        if(full(cachep->slabs_partial))
            putPartialToFull(cachep);
        return allocatedAddr;
    }
    else if(cachep->slabs_empty != nullptr)
    8000187c:	2104b503          	ld	a0,528(s1)
    80001880:	06050c63          	beqz	a0,800018f8 <_Z16kmem_cache_allocP12kmem_cache_s+0xa0>
    {
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001884:	00000097          	auipc	ra,0x0
    80001888:	aa8080e7          	jalr	-1368(ra) # 8000132c <_Z14allocateObjectP6slab_s>
    8000188c:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001890:	2104b503          	ld	a0,528(s1)
    80001894:	00000097          	auipc	ra,0x0
    80001898:	b78080e7          	jalr	-1160(ra) # 8000140c <_Z5emptyP6slab_s>
    8000189c:	02051863          	bnez	a0,800018cc <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
            putEmptyToPartial(cachep);
    800018a0:	00048513          	mv	a0,s1
    800018a4:	00000097          	auipc	ra,0x0
    800018a8:	bd0080e7          	jalr	-1072(ra) # 80001474 <_Z17putEmptyToPartialP12kmem_cache_s>
        return allocatedAddr;
    800018ac:	0200006f          	j	800018cc <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	a7c080e7          	jalr	-1412(ra) # 8000132c <_Z14allocateObjectP6slab_s>
    800018b8:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    800018bc:	2204b503          	ld	a0,544(s1)
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	b24080e7          	jalr	-1244(ra) # 800013e4 <_Z4fullP6slab_s>
    800018c8:	02051063          	bnez	a0,800018e8 <_Z16kmem_cache_allocP12kmem_cache_s+0x90>
        if(!empty(cachep->slabs_empty))
            putEmptyToPartial(cachep);
        return allocatedAddr;
    }
    return nullptr;
}
    800018cc:	00090513          	mv	a0,s2
    800018d0:	01813083          	ld	ra,24(sp)
    800018d4:	01013403          	ld	s0,16(sp)
    800018d8:	00813483          	ld	s1,8(sp)
    800018dc:	00013903          	ld	s2,0(sp)
    800018e0:	02010113          	addi	sp,sp,32
    800018e4:	00008067          	ret
            putPartialToFull(cachep);
    800018e8:	00048513          	mv	a0,s1
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	b40080e7          	jalr	-1216(ra) # 8000142c <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    800018f4:	fd9ff06f          	j	800018cc <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
        allocateSlab(cachep);
    800018f8:	00048513          	mv	a0,s1
    800018fc:	00000097          	auipc	ra,0x0
    80001900:	bc0080e7          	jalr	-1088(ra) # 800014bc <_Z12allocateSlabP12kmem_cache_s>
        if(cachep->slabs_empty == nullptr)
    80001904:	2104b903          	ld	s2,528(s1)
    80001908:	fc0902e3          	beqz	s2,800018cc <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    8000190c:	00090513          	mv	a0,s2
    80001910:	00000097          	auipc	ra,0x0
    80001914:	a1c080e7          	jalr	-1508(ra) # 8000132c <_Z14allocateObjectP6slab_s>
    80001918:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    8000191c:	2104b503          	ld	a0,528(s1)
    80001920:	00000097          	auipc	ra,0x0
    80001924:	aec080e7          	jalr	-1300(ra) # 8000140c <_Z5emptyP6slab_s>
    80001928:	fa0512e3          	bnez	a0,800018cc <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
            putEmptyToPartial(cachep);
    8000192c:	00048513          	mv	a0,s1
    80001930:	00000097          	auipc	ra,0x0
    80001934:	b44080e7          	jalr	-1212(ra) # 80001474 <_Z17putEmptyToPartialP12kmem_cache_s>
        return allocatedAddr;
    80001938:	f95ff06f          	j	800018cc <_Z16kmem_cache_allocP12kmem_cache_s+0x74>

000000008000193c <_Z17kmem_cache_createPKcmPFvPvES3_>:
{
    8000193c:	fc010113          	addi	sp,sp,-64
    80001940:	02113c23          	sd	ra,56(sp)
    80001944:	02813823          	sd	s0,48(sp)
    80001948:	02913423          	sd	s1,40(sp)
    8000194c:	03213023          	sd	s2,32(sp)
    80001950:	01313c23          	sd	s3,24(sp)
    80001954:	01413823          	sd	s4,16(sp)
    80001958:	01513423          	sd	s5,8(sp)
    8000195c:	04010413          	addi	s0,sp,64
    80001960:	00050993          	mv	s3,a0
    80001964:	00058913          	mv	s2,a1
    80001968:	00060a13          	mv	s4,a2
    8000196c:	00068a93          	mv	s5,a3
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001970:	00009517          	auipc	a0,0x9
    80001974:	b4053503          	ld	a0,-1216(a0) # 8000a4b0 <_ZL13slabAllocator>
    80001978:	07850513          	addi	a0,a0,120
    8000197c:	00000097          	auipc	ra,0x0
    80001980:	edc080e7          	jalr	-292(ra) # 80001858 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001984:	00050493          	mv	s1,a0
    newCache->slabs_empty = nullptr;
    80001988:	20053823          	sd	zero,528(a0)
    newCache->slabs_partial = nullptr;
    8000198c:	22053023          	sd	zero,544(a0)
    newCache->slabs_full = nullptr;
    80001990:	20053c23          	sd	zero,536(a0)
    newCache->next = newCache->prev = nullptr;
    80001994:	20053423          	sd	zero,520(a0)
    80001998:	20053023          	sd	zero,512(a0)
    newCache->dtor = dtor;
    8000199c:	25553023          	sd	s5,576(a0)
    newCache->ctor = ctor;
    800019a0:	23453c23          	sd	s4,568(a0)
    strcpy(name, newCache->cacheName);
    800019a4:	00050593          	mv	a1,a0
    800019a8:	00098513          	mv	a0,s3
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	8ac080e7          	jalr	-1876(ra) # 80001258 <_Z6strcpyPKcPc>
    newCache->obj_size = size;
    800019b4:	2324b823          	sd	s2,560(s1)
    newCache->slab_size = getOptimalSlabSize(size);
    800019b8:	00090513          	mv	a0,s2
    800019bc:	00000097          	auipc	ra,0x0
    800019c0:	ba0080e7          	jalr	-1120(ra) # 8000155c <_Z18getOptimalSlabSizem>
    800019c4:	22a4b423          	sd	a0,552(s1)
}
    800019c8:	00000513          	li	a0,0
    800019cc:	03813083          	ld	ra,56(sp)
    800019d0:	03013403          	ld	s0,48(sp)
    800019d4:	02813483          	ld	s1,40(sp)
    800019d8:	02013903          	ld	s2,32(sp)
    800019dc:	01813983          	ld	s3,24(sp)
    800019e0:	01013a03          	ld	s4,16(sp)
    800019e4:	00813a83          	ld	s5,8(sp)
    800019e8:	04010113          	addi	sp,sp,64
    800019ec:	00008067          	ret

00000000800019f0 <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    800019f0:	fd010113          	addi	sp,sp,-48
    800019f4:	02113423          	sd	ra,40(sp)
    800019f8:	02813023          	sd	s0,32(sp)
    800019fc:	00913c23          	sd	s1,24(sp)
    80001a00:	01213823          	sd	s2,16(sp)
    80001a04:	01313423          	sd	s3,8(sp)
    80001a08:	03010413          	addi	s0,sp,48
    80001a0c:	00050993          	mv	s3,a0
    80001a10:	00058913          	mv	s2,a1
    slab_t* slab = findSlab(cachep, objp);
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	bb0080e7          	jalr	-1104(ra) # 800015c4 <_Z8findSlabP12kmem_cache_sPv>
    if(slab == nullptr) return;
    80001a1c:	02050863          	beqz	a0,80001a4c <_Z15kmem_cache_freeP12kmem_cache_sPv+0x5c>
    80001a20:	00050493          	mv	s1,a0

    int indexOfObject = ((size_t)objp - sizeof(slab_t) - (size_t)slab) / slab->owner->obj_size;
    80001a24:	40a905b3          	sub	a1,s2,a0
    80001a28:	fb058593          	addi	a1,a1,-80
    80001a2c:	01053783          	ld	a5,16(a0)
    80001a30:	2307b783          	ld	a5,560(a5)
    80001a34:	02f5d5b3          	divu	a1,a1,a5
    80001a38:	0005859b          	sext.w	a1,a1
    if((size_t)objp != (size_t)slab + sizeof(slab_t) + indexOfObject*slab->owner->obj_size) //address not allocated, random address
    80001a3c:	02b787b3          	mul	a5,a5,a1
    80001a40:	00f507b3          	add	a5,a0,a5
    80001a44:	05078793          	addi	a5,a5,80
    80001a48:	02f90063          	beq	s2,a5,80001a68 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x78>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
        removeFullSlab(cachep, slab);
    else if(slab->numOfAllocatedObjects == 1)
        removePartialSlab(cachep, slab);
    slab->numOfAllocatedObjects--;
}
    80001a4c:	02813083          	ld	ra,40(sp)
    80001a50:	02013403          	ld	s0,32(sp)
    80001a54:	01813483          	ld	s1,24(sp)
    80001a58:	01013903          	ld	s2,16(sp)
    80001a5c:	00813983          	ld	s3,8(sp)
    80001a60:	03010113          	addi	sp,sp,48
    80001a64:	00008067          	ret
    resetAllocatedIndex(slab, indexOfObject);
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	bdc080e7          	jalr	-1060(ra) # 80001644 <_Z19resetAllocatedIndexP6slab_si>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
    80001a70:	0184b703          	ld	a4,24(s1)
    80001a74:	0204b783          	ld	a5,32(s1)
    80001a78:	00f70e63          	beq	a4,a5,80001a94 <_Z15kmem_cache_freeP12kmem_cache_sPv+0xa4>
    else if(slab->numOfAllocatedObjects == 1)
    80001a7c:	00100713          	li	a4,1
    80001a80:	02e78463          	beq	a5,a4,80001aa8 <_Z15kmem_cache_freeP12kmem_cache_sPv+0xb8>
    slab->numOfAllocatedObjects--;
    80001a84:	0204b783          	ld	a5,32(s1)
    80001a88:	fff78793          	addi	a5,a5,-1
    80001a8c:	02f4b023          	sd	a5,32(s1)
    80001a90:	fbdff06f          	j	80001a4c <_Z15kmem_cache_freeP12kmem_cache_sPv+0x5c>
        removeFullSlab(cachep, slab);
    80001a94:	00048593          	mv	a1,s1
    80001a98:	00098513          	mv	a0,s3
    80001a9c:	00000097          	auipc	ra,0x0
    80001aa0:	bf4080e7          	jalr	-1036(ra) # 80001690 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>
    80001aa4:	fe1ff06f          	j	80001a84 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x94>
        removePartialSlab(cachep, slab);
    80001aa8:	00048593          	mv	a1,s1
    80001aac:	00098513          	mv	a0,s3
    80001ab0:	00000097          	auipc	ra,0x0
    80001ab4:	c44080e7          	jalr	-956(ra) # 800016f4 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
    80001ab8:	fcdff06f          	j	80001a84 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x94>

0000000080001abc <_Z15kmem_cache_infoP12kmem_cache_s>:

//TODO
//what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    80001abc:	fe010113          	addi	sp,sp,-32
    80001ac0:	00113c23          	sd	ra,24(sp)
    80001ac4:	00813823          	sd	s0,16(sp)
    80001ac8:	00913423          	sd	s1,8(sp)
    80001acc:	01213023          	sd	s2,0(sp)
    80001ad0:	02010413          	addi	s0,sp,32
    80001ad4:	00050913          	mv	s2,a0
    KConsole::trapPrintString("Kmem Cache Info-------------------\n");
    80001ad8:	00006517          	auipc	a0,0x6
    80001adc:	5a050513          	addi	a0,a0,1440 # 80008078 <CONSOLE_STATUS+0x68>
    80001ae0:	00001097          	auipc	ra,0x1
    80001ae4:	61c080e7          	jalr	1564(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache Name ");
    80001ae8:	00006517          	auipc	a0,0x6
    80001aec:	5b850513          	addi	a0,a0,1464 # 800080a0 <CONSOLE_STATUS+0x90>
    80001af0:	00001097          	auipc	ra,0x1
    80001af4:	60c080e7          	jalr	1548(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    80001af8:	00090513          	mv	a0,s2
    80001afc:	00001097          	auipc	ra,0x1
    80001b00:	600080e7          	jalr	1536(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    80001b04:	00007517          	auipc	a0,0x7
    80001b08:	a4450513          	addi	a0,a0,-1468 # 80008548 <CONSOLE_STATUS+0x538>
    80001b0c:	00001097          	auipc	ra,0x1
    80001b10:	5f0080e7          	jalr	1520(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache slab size in blocks ");
    80001b14:	00006517          	auipc	a0,0x6
    80001b18:	59c50513          	addi	a0,a0,1436 # 800080b0 <CONSOLE_STATUS+0xa0>
    80001b1c:	00001097          	auipc	ra,0x1
    80001b20:	5e0080e7          	jalr	1504(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(cachep->slab_size); KConsole::trapPrintString("\n");
    80001b24:	00000613          	li	a2,0
    80001b28:	00a00593          	li	a1,10
    80001b2c:	22892503          	lw	a0,552(s2)
    80001b30:	00001097          	auipc	ra,0x1
    80001b34:	610080e7          	jalr	1552(ra) # 80003140 <_ZN8KConsole12trapPrintIntEiii>
    80001b38:	00007517          	auipc	a0,0x7
    80001b3c:	a1050513          	addi	a0,a0,-1520 # 80008548 <CONSOLE_STATUS+0x538>
    80001b40:	00001097          	auipc	ra,0x1
    80001b44:	5bc080e7          	jalr	1468(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache obj size in bytes ");
    80001b48:	00006517          	auipc	a0,0x6
    80001b4c:	58850513          	addi	a0,a0,1416 # 800080d0 <CONSOLE_STATUS+0xc0>
    80001b50:	00001097          	auipc	ra,0x1
    80001b54:	5ac080e7          	jalr	1452(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(cachep->obj_size); KConsole::trapPrintString("\n");
    80001b58:	00000613          	li	a2,0
    80001b5c:	00a00593          	li	a1,10
    80001b60:	23092503          	lw	a0,560(s2)
    80001b64:	00001097          	auipc	ra,0x1
    80001b68:	5dc080e7          	jalr	1500(ra) # 80003140 <_ZN8KConsole12trapPrintIntEiii>
    80001b6c:	00007517          	auipc	a0,0x7
    80001b70:	9dc50513          	addi	a0,a0,-1572 # 80008548 <CONSOLE_STATUS+0x538>
    80001b74:	00001097          	auipc	ra,0x1
    80001b78:	588080e7          	jalr	1416(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Slabs info----\n");
    80001b7c:	00006517          	auipc	a0,0x6
    80001b80:	57450513          	addi	a0,a0,1396 # 800080f0 <CONSOLE_STATUS+0xe0>
    80001b84:	00001097          	auipc	ra,0x1
    80001b88:	578080e7          	jalr	1400(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>

    KConsole::trapPrintString("Full slabs\n");
    80001b8c:	00006517          	auipc	a0,0x6
    80001b90:	57450513          	addi	a0,a0,1396 # 80008100 <CONSOLE_STATUS+0xf0>
    80001b94:	00001097          	auipc	ra,0x1
    80001b98:	568080e7          	jalr	1384(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    slab_t* slab = cachep->slabs_full;
    80001b9c:	21893483          	ld	s1,536(s2)
    while(slab != nullptr)
    80001ba0:	00048c63          	beqz	s1,80001bb8 <_Z15kmem_cache_infoP12kmem_cache_s+0xfc>
    {
        printSlabInfo(slab);
    80001ba4:	00048513          	mv	a0,s1
    80001ba8:	00000097          	auipc	ra,0x0
    80001bac:	bb0080e7          	jalr	-1104(ra) # 80001758 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001bb0:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001bb4:	fedff06f          	j	80001ba0 <_Z15kmem_cache_infoP12kmem_cache_s+0xe4>
    }

    KConsole::trapPrintString("Partial slabs\n");
    80001bb8:	00006517          	auipc	a0,0x6
    80001bbc:	55850513          	addi	a0,a0,1368 # 80008110 <CONSOLE_STATUS+0x100>
    80001bc0:	00001097          	auipc	ra,0x1
    80001bc4:	53c080e7          	jalr	1340(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_partial;
    80001bc8:	22093483          	ld	s1,544(s2)
    while(slab != nullptr)
    80001bcc:	00048c63          	beqz	s1,80001be4 <_Z15kmem_cache_infoP12kmem_cache_s+0x128>
    {
        printSlabInfo(slab);
    80001bd0:	00048513          	mv	a0,s1
    80001bd4:	00000097          	auipc	ra,0x0
    80001bd8:	b84080e7          	jalr	-1148(ra) # 80001758 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001bdc:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001be0:	fedff06f          	j	80001bcc <_Z15kmem_cache_infoP12kmem_cache_s+0x110>
    }

    KConsole::trapPrintString("Empty slabs\n");
    80001be4:	00006517          	auipc	a0,0x6
    80001be8:	53c50513          	addi	a0,a0,1340 # 80008120 <CONSOLE_STATUS+0x110>
    80001bec:	00001097          	auipc	ra,0x1
    80001bf0:	510080e7          	jalr	1296(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_empty;
    80001bf4:	21093483          	ld	s1,528(s2)
    while(slab != nullptr)
    80001bf8:	00048c63          	beqz	s1,80001c10 <_Z15kmem_cache_infoP12kmem_cache_s+0x154>
    {
        printSlabInfo(slab);
    80001bfc:	00048513          	mv	a0,s1
    80001c00:	00000097          	auipc	ra,0x0
    80001c04:	b58080e7          	jalr	-1192(ra) # 80001758 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001c08:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001c0c:	fedff06f          	j	80001bf8 <_Z15kmem_cache_infoP12kmem_cache_s+0x13c>
    }
}
    80001c10:	01813083          	ld	ra,24(sp)
    80001c14:	01013403          	ld	s0,16(sp)
    80001c18:	00813483          	ld	s1,8(sp)
    80001c1c:	00013903          	ld	s2,0(sp)
    80001c20:	02010113          	addi	sp,sp,32
    80001c24:	00008067          	ret

0000000080001c28 <_Z9mem_allocm>:
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    80001c28:	ff010113          	addi	sp,sp,-16
    80001c2c:	00813423          	sd	s0,8(sp)
    80001c30:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001c34:	03f50513          	addi	a0,a0,63
    80001c38:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    80001c3c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80001c40:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    80001c44:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    80001c48:	00050513          	mv	a0,a0

    return (void*)allocatedAddr;
}
    80001c4c:	00813403          	ld	s0,8(sp)
    80001c50:	01010113          	addi	sp,sp,16
    80001c54:	00008067          	ret

0000000080001c58 <_Z8mem_freePv>:

int mem_free(void* p)
{
    80001c58:	ff010113          	addi	sp,sp,-16
    80001c5c:	00813423          	sd	s0,8(sp)
    80001c60:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80001c64:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    80001c68:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    80001c6c:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001c70:	00050513          	mv	a0,a0

    return result;
}
    80001c74:	0005051b          	sext.w	a0,a0
    80001c78:	00813403          	ld	s0,8(sp)
    80001c7c:	01010113          	addi	sp,sp,16
    80001c80:	00008067          	ret

0000000080001c84 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    80001c84:	fd010113          	addi	sp,sp,-48
    80001c88:	02113423          	sd	ra,40(sp)
    80001c8c:	02813023          	sd	s0,32(sp)
    80001c90:	00913c23          	sd	s1,24(sp)
    80001c94:	01213823          	sd	s2,16(sp)
    80001c98:	01313423          	sd	s3,8(sp)
    80001c9c:	03010413          	addi	s0,sp,48
    80001ca0:	00050493          	mv	s1,a0
    80001ca4:	00058913          	mv	s2,a1
    80001ca8:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80001cac:	00001537          	lui	a0,0x1
    80001cb0:	00000097          	auipc	ra,0x0
    80001cb4:	f78080e7          	jalr	-136(ra) # 80001c28 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    //todo
    //handle this error
    if(stack_space == 0)
    80001cb8:	04050263          	beqz	a0,80001cfc <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    80001cbc:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    80001cc0:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    80001cc4:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    80001cc8:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    80001ccc:	01100793          	li	a5,17
    80001cd0:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    80001cd4:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001cd8:	00050513          	mv	a0,a0

    return result;
    80001cdc:	0005051b          	sext.w	a0,a0
}
    80001ce0:	02813083          	ld	ra,40(sp)
    80001ce4:	02013403          	ld	s0,32(sp)
    80001ce8:	01813483          	ld	s1,24(sp)
    80001cec:	01013903          	ld	s2,16(sp)
    80001cf0:	00813983          	ld	s3,8(sp)
    80001cf4:	03010113          	addi	sp,sp,48
    80001cf8:	00008067          	ret
        return -1;
    80001cfc:	fff00513          	li	a0,-1
    80001d00:	fe1ff06f          	j	80001ce0 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>

0000000080001d04 <_Z15thread_dispatchv>:

void thread_dispatch()
{
    80001d04:	ff010113          	addi	sp,sp,-16
    80001d08:	00813423          	sd	s0,8(sp)
    80001d0c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001d10:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001d14:	00000073          	ecall
}
    80001d18:	00813403          	ld	s0,8(sp)
    80001d1c:	01010113          	addi	sp,sp,16
    80001d20:	00008067          	ret

0000000080001d24 <_Z11thread_exitv>:

int thread_exit()
{
    80001d24:	ff010113          	addi	sp,sp,-16
    80001d28:	00813423          	sd	s0,8(sp)
    80001d2c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80001d30:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80001d34:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001d38:	00050513          	mv	a0,a0
    return result;
}
    80001d3c:	0005051b          	sext.w	a0,a0
    80001d40:	00813403          	ld	s0,8(sp)
    80001d44:	01010113          	addi	sp,sp,16
    80001d48:	00008067          	ret

0000000080001d4c <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    80001d4c:	ff010113          	addi	sp,sp,-16
    80001d50:	00813423          	sd	s0,8(sp)
    80001d54:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    80001d58:	02059593          	slli	a1,a1,0x20
    80001d5c:	0205d593          	srli	a1,a1,0x20
    80001d60:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80001d64:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80001d68:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    80001d6c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001d70:	00050513          	mv	a0,a0
    return result;
}
    80001d74:	0005051b          	sext.w	a0,a0
    80001d78:	00813403          	ld	s0,8(sp)
    80001d7c:	01010113          	addi	sp,sp,16
    80001d80:	00008067          	ret

0000000080001d84 <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    80001d84:	ff010113          	addi	sp,sp,-16
    80001d88:	00813423          	sd	s0,8(sp)
    80001d8c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80001d90:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    80001d94:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    80001d98:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001d9c:	00050513          	mv	a0,a0
    return result;
}
    80001da0:	0005051b          	sext.w	a0,a0
    80001da4:	00813403          	ld	s0,8(sp)
    80001da8:	01010113          	addi	sp,sp,16
    80001dac:	00008067          	ret

0000000080001db0 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    80001db0:	ff010113          	addi	sp,sp,-16
    80001db4:	00813423          	sd	s0,8(sp)
    80001db8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    80001dbc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    80001dc0:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    80001dc4:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001dc8:	00050513          	mv	a0,a0
    return result;
}
    80001dcc:	0005051b          	sext.w	a0,a0
    80001dd0:	00813403          	ld	s0,8(sp)
    80001dd4:	01010113          	addi	sp,sp,16
    80001dd8:	00008067          	ret

0000000080001ddc <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    80001ddc:	ff010113          	addi	sp,sp,-16
    80001de0:	00813423          	sd	s0,8(sp)
    80001de4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    80001de8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    80001dec:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    80001df0:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001df4:	00050513          	mv	a0,a0
    return result;
}
    80001df8:	0005051b          	sext.w	a0,a0
    80001dfc:	00813403          	ld	s0,8(sp)
    80001e00:	01010113          	addi	sp,sp,16
    80001e04:	00008067          	ret

0000000080001e08 <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    80001e08:	ff010113          	addi	sp,sp,-16
    80001e0c:	00813423          	sd	s0,8(sp)
    80001e10:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    80001e14:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80001e18:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    80001e1c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001e20:	00050513          	mv	a0,a0
    return result;
}
    80001e24:	0005051b          	sext.w	a0,a0
    80001e28:	00813403          	ld	s0,8(sp)
    80001e2c:	01010113          	addi	sp,sp,16
    80001e30:	00008067          	ret

0000000080001e34 <_Z12thread_startPv>:

int thread_start(void* p)
{
    80001e34:	ff010113          	addi	sp,sp,-16
    80001e38:	00813423          	sd	s0,8(sp)
    80001e3c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    80001e40:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    80001e44:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    80001e48:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001e4c:	00050513          	mv	a0,a0
    return result;
}
    80001e50:	0005051b          	sext.w	a0,a0
    80001e54:	00813403          	ld	s0,8(sp)
    80001e58:	01010113          	addi	sp,sp,16
    80001e5c:	00008067          	ret

0000000080001e60 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    80001e60:	fd010113          	addi	sp,sp,-48
    80001e64:	02113423          	sd	ra,40(sp)
    80001e68:	02813023          	sd	s0,32(sp)
    80001e6c:	00913c23          	sd	s1,24(sp)
    80001e70:	01213823          	sd	s2,16(sp)
    80001e74:	01313423          	sd	s3,8(sp)
    80001e78:	03010413          	addi	s0,sp,48
    80001e7c:	00050493          	mv	s1,a0
    80001e80:	00058913          	mv	s2,a1
    80001e84:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80001e88:	00001537          	lui	a0,0x1
    80001e8c:	00000097          	auipc	ra,0x0
    80001e90:	d9c080e7          	jalr	-612(ra) # 80001c28 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    80001e94:	04050263          	beqz	a0,80001ed8 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    80001e98:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    80001e9c:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    80001ea0:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    80001ea4:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    80001ea8:	01400793          	li	a5,20
    80001eac:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001eb0:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001eb4:	00050513          	mv	a0,a0
    return result;
    80001eb8:	0005051b          	sext.w	a0,a0
}
    80001ebc:	02813083          	ld	ra,40(sp)
    80001ec0:	02013403          	ld	s0,32(sp)
    80001ec4:	01813483          	ld	s1,24(sp)
    80001ec8:	01013903          	ld	s2,16(sp)
    80001ecc:	00813983          	ld	s3,8(sp)
    80001ed0:	03010113          	addi	sp,sp,48
    80001ed4:	00008067          	ret
        return -1;
    80001ed8:	fff00513          	li	a0,-1
    80001edc:	fe1ff06f          	j	80001ebc <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>

0000000080001ee0 <_Z4getcv>:

char getc()
{
    80001ee0:	ff010113          	addi	sp,sp,-16
    80001ee4:	00813423          	sd	s0,8(sp)
    80001ee8:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    80001eec:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    80001ef0:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001ef4:	00050513          	mv	a0,a0
    return (char)result;
}
    80001ef8:	0ff57513          	andi	a0,a0,255
    80001efc:	00813403          	ld	s0,8(sp)
    80001f00:	01010113          	addi	sp,sp,16
    80001f04:	00008067          	ret

0000000080001f08 <_Z4putcc>:

void putc(char c)
{
    80001f08:	ff010113          	addi	sp,sp,-16
    80001f0c:	00813423          	sd	s0,8(sp)
    80001f10:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    80001f14:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80001f18:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    80001f1c:	00000073          	ecall
}
    80001f20:	00813403          	ld	s0,8(sp)
    80001f24:	01010113          	addi	sp,sp,16
    80001f28:	00008067          	ret

0000000080001f2c <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    80001f2c:	ff010113          	addi	sp,sp,-16
    80001f30:	00813423          	sd	s0,8(sp)
    80001f34:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    80001f38:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    80001f3c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001f40:	00050513          	mv	a0,a0
    return (char)result;
}
    80001f44:	0ff57513          	andi	a0,a0,255
    80001f48:	00813403          	ld	s0,8(sp)
    80001f4c:	01010113          	addi	sp,sp,16
    80001f50:	00008067          	ret

0000000080001f54 <_Z17thread_delete_pcbP7_thread>:

int thread_delete_pcb(thread_t handle)
{
    80001f54:	ff010113          	addi	sp,sp,-16
    80001f58:	00813423          	sd	s0,8(sp)
    80001f5c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80001f60:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    80001f64:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    80001f68:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001f6c:	00050513          	mv	a0,a0
    return (char)result;
}
    80001f70:	0ff57513          	andi	a0,a0,255
    80001f74:	00813403          	ld	s0,8(sp)
    80001f78:	01010113          	addi	sp,sp,16
    80001f7c:	00008067          	ret

0000000080001f80 <_ZN7_threaddlEPv>:
//

#include "../h/_thread.hpp"
#include "../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    80001f80:	ff010113          	addi	sp,sp,-16
    80001f84:	00113423          	sd	ra,8(sp)
    80001f88:	00813023          	sd	s0,0(sp)
    80001f8c:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    80001f90:	00000097          	auipc	ra,0x0
    80001f94:	fc4080e7          	jalr	-60(ra) # 80001f54 <_Z17thread_delete_pcbP7_thread>
    80001f98:	00813083          	ld	ra,8(sp)
    80001f9c:	00013403          	ld	s0,0(sp)
    80001fa0:	01010113          	addi	sp,sp,16
    80001fa4:	00008067          	ret

0000000080001fa8 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    80001fa8:	ff010113          	addi	sp,sp,-16
    80001fac:	00113423          	sd	ra,8(sp)
    80001fb0:	00813023          	sd	s0,0(sp)
    80001fb4:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80001fb8:	00002097          	auipc	ra,0x2
    80001fbc:	b34080e7          	jalr	-1228(ra) # 80003aec <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    80001fc0:	00008797          	auipc	a5,0x8
    80001fc4:	4f87b783          	ld	a5,1272(a5) # 8000a4b8 <_ZN3PCB7runningE>
    80001fc8:	0287b703          	ld	a4,40(a5)
    80001fcc:	0307b503          	ld	a0,48(a5)
    80001fd0:	000700e7          	jalr	a4

    thread_exit();
    80001fd4:	00000097          	auipc	ra,0x0
    80001fd8:	d50080e7          	jalr	-688(ra) # 80001d24 <_Z11thread_exitv>
}
    80001fdc:	00813083          	ld	ra,8(sp)
    80001fe0:	00013403          	ld	s0,0(sp)
    80001fe4:	01010113          	addi	sp,sp,16
    80001fe8:	00008067          	ret

0000000080001fec <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    80001fec:	ff010113          	addi	sp,sp,-16
    80001ff0:	00813423          	sd	s0,8(sp)
    80001ff4:	01010413          	addi	s0,sp,16
    })
    80001ff8:	00050023          	sb	zero,0(a0) # 1000 <_entry-0x7ffff000>
    80001ffc:	00e53c23          	sd	a4,24(a0)
    80002000:	02053023          	sd	zero,32(a0)
    80002004:	02b53423          	sd	a1,40(a0)
    80002008:	02c53823          	sd	a2,48(a0)
    8000200c:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002010:	000017b7          	lui	a5,0x1
    80002014:	00f686b3          	add	a3,a3,a5
    })
    80002018:	04d53423          	sd	a3,72(a0)
    8000201c:	00000797          	auipc	a5,0x0
    80002020:	f8c78793          	addi	a5,a5,-116 # 80001fa8 <_ZN3PCB6runnerEv>
    80002024:	04f53823          	sd	a5,80(a0)
    80002028:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    8000202c:	00053423          	sd	zero,8(a0)
}
    80002030:	00813403          	ld	s0,8(sp)
    80002034:	01010113          	addi	sp,sp,16
    80002038:	00008067          	ret

000000008000203c <_ZN3PCB5startEv>:
{
    8000203c:	ff010113          	addi	sp,sp,-16
    80002040:	00113423          	sd	ra,8(sp)
    80002044:	00813023          	sd	s0,0(sp)
    80002048:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    8000204c:	00001097          	auipc	ra,0x1
    80002050:	34c080e7          	jalr	844(ra) # 80003398 <_ZN9Scheduler3putEP3PCB>
}
    80002054:	00813083          	ld	ra,8(sp)
    80002058:	00013403          	ld	s0,0(sp)
    8000205c:	01010113          	addi	sp,sp,16
    80002060:	00008067          	ret

0000000080002064 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002064:	fe010113          	addi	sp,sp,-32
    80002068:	00113c23          	sd	ra,24(sp)
    8000206c:	00813823          	sd	s0,16(sp)
    80002070:	00913423          	sd	s1,8(sp)
    80002074:	01213023          	sd	s2,0(sp)
    80002078:	02010413          	addi	s0,sp,32
    PCB* old = running;
    8000207c:	00008497          	auipc	s1,0x8
    80002080:	43c4b483          	ld	s1,1084(s1) # 8000a4b8 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80002084:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    80002088:	00100793          	li	a5,1
    8000208c:	04f70a63          	beq	a4,a5,800020e0 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    80002090:	00001097          	auipc	ra,0x1
    80002094:	35c080e7          	jalr	860(ra) # 800033ec <_ZN9Scheduler3getEv>
    80002098:	00008917          	auipc	s2,0x8
    8000209c:	42090913          	addi	s2,s2,1056 # 8000a4b8 <_ZN3PCB7runningE>
    800020a0:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    800020a4:	00100793          	li	a5,1
    800020a8:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);

    Riscv::changePrivMode();
    800020ac:	00002097          	auipc	ra,0x2
    800020b0:	b58080e7          	jalr	-1192(ra) # 80003c04 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    800020b4:	00093583          	ld	a1,0(s2)
    800020b8:	04858593          	addi	a1,a1,72
    800020bc:	04848513          	addi	a0,s1,72
    800020c0:	fffff097          	auipc	ra,0xfffff
    800020c4:	178080e7          	jalr	376(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800020c8:	01813083          	ld	ra,24(sp)
    800020cc:	01013403          	ld	s0,16(sp)
    800020d0:	00813483          	ld	s1,8(sp)
    800020d4:	00013903          	ld	s2,0(sp)
    800020d8:	02010113          	addi	sp,sp,32
    800020dc:	00008067          	ret
        Scheduler::put(old);
    800020e0:	00048513          	mv	a0,s1
    800020e4:	00001097          	auipc	ra,0x1
    800020e8:	2b4080e7          	jalr	692(ra) # 80003398 <_ZN9Scheduler3putEP3PCB>
    800020ec:	fa5ff06f          	j	80002090 <_ZN3PCB8dispatchEv+0x2c>

00000000800020f0 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800020f0:	ff010113          	addi	sp,sp,-16
    800020f4:	00113423          	sd	ra,8(sp)
    800020f8:	00813023          	sd	s0,0(sp)
    800020fc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80002100:	00002097          	auipc	ra,0x2
    80002104:	23c080e7          	jalr	572(ra) # 8000433c <_ZN15MemoryAllocator7kmallocEm>
}
    80002108:	00813083          	ld	ra,8(sp)
    8000210c:	00013403          	ld	s0,0(sp)
    80002110:	01010113          	addi	sp,sp,16
    80002114:	00008067          	ret

0000000080002118 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002118:	ff010113          	addi	sp,sp,-16
    8000211c:	00113423          	sd	ra,8(sp)
    80002120:	00813023          	sd	s0,0(sp)
    80002124:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80002128:	00002097          	auipc	ra,0x2
    8000212c:	278080e7          	jalr	632(ra) # 800043a0 <_ZN15MemoryAllocator5kfreeEPv>
}
    80002130:	00813083          	ld	ra,8(sp)
    80002134:	00013403          	ld	s0,0(sp)
    80002138:	01010113          	addi	sp,sp,16
    8000213c:	00008067          	ret

0000000080002140 <_ZN3PCBD1Ev>:

PCB::~PCB()
    80002140:	ff010113          	addi	sp,sp,-16
    80002144:	00113423          	sd	ra,8(sp)
    80002148:	00813023          	sd	s0,0(sp)
    8000214c:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    80002150:	03853503          	ld	a0,56(a0)
    80002154:	00002097          	auipc	ra,0x2
    80002158:	24c080e7          	jalr	588(ra) # 800043a0 <_ZN15MemoryAllocator5kfreeEPv>
}
    8000215c:	00813083          	ld	ra,8(sp)
    80002160:	00013403          	ld	s0,0(sp)
    80002164:	01010113          	addi	sp,sp,16
    80002168:	00008067          	ret

000000008000216c <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    8000216c:	fd010113          	addi	sp,sp,-48
    80002170:	02113423          	sd	ra,40(sp)
    80002174:	02813023          	sd	s0,32(sp)
    80002178:	00913c23          	sd	s1,24(sp)
    8000217c:	01213823          	sd	s2,16(sp)
    80002180:	01313423          	sd	s3,8(sp)
    80002184:	01413023          	sd	s4,0(sp)
    80002188:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    8000218c:	06000513          	li	a0,96
    80002190:	00000097          	auipc	ra,0x0
    80002194:	f60080e7          	jalr	-160(ra) # 800020f0 <_ZN3PCBnwEm>
    80002198:	00050493          	mv	s1,a0
    8000219c:	00000713          	li	a4,0
    800021a0:	00000693          	li	a3,0
    800021a4:	00000613          	li	a2,0
    800021a8:	00000593          	li	a1,0
    800021ac:	00000097          	auipc	ra,0x0
    800021b0:	e40080e7          	jalr	-448(ra) # 80001fec <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    800021b4:	00100793          	li	a5,1
    800021b8:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    800021bc:	00008917          	auipc	s2,0x8
    800021c0:	2fc90913          	addi	s2,s2,764 # 8000a4b8 <_ZN3PCB7runningE>
    800021c4:	00993023          	sd	s1,0(s2)
    800021c8:	00100a13          	li	s4,1
    800021cc:	0544a023          	sw	s4,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    800021d0:	00001537          	lui	a0,0x1
    800021d4:	00002097          	auipc	ra,0x2
    800021d8:	168080e7          	jalr	360(ra) # 8000433c <_ZN15MemoryAllocator7kmallocEm>
    800021dc:	00050993          	mv	s3,a0
    800021e0:	06000513          	li	a0,96
    800021e4:	00000097          	auipc	ra,0x0
    800021e8:	f0c080e7          	jalr	-244(ra) # 800020f0 <_ZN3PCBnwEm>
    800021ec:	00050493          	mv	s1,a0
    800021f0:	00200713          	li	a4,2
    800021f4:	00098693          	mv	a3,s3
    800021f8:	00000613          	li	a2,0
    800021fc:	00008597          	auipc	a1,0x8
    80002200:	22c5b583          	ld	a1,556(a1) # 8000a428 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002204:	00000097          	auipc	ra,0x0
    80002208:	de8080e7          	jalr	-536(ra) # 80001fec <_ZN3PCBC1EPFvPvES0_S0_m>
    8000220c:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80002210:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    80002214:	00893503          	ld	a0,8(s2)
    80002218:	00000097          	auipc	ra,0x0
    8000221c:	e24080e7          	jalr	-476(ra) # 8000203c <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002220:	00001537          	lui	a0,0x1
    80002224:	00002097          	auipc	ra,0x2
    80002228:	118080e7          	jalr	280(ra) # 8000433c <_ZN15MemoryAllocator7kmallocEm>
    8000222c:	00050993          	mv	s3,a0
    80002230:	06000513          	li	a0,96
    80002234:	00000097          	auipc	ra,0x0
    80002238:	ebc080e7          	jalr	-324(ra) # 800020f0 <_ZN3PCBnwEm>
    8000223c:	00050493          	mv	s1,a0
    80002240:	00200713          	li	a4,2
    80002244:	00098693          	mv	a3,s3
    80002248:	00000613          	li	a2,0
    8000224c:	00008597          	auipc	a1,0x8
    80002250:	20c5b583          	ld	a1,524(a1) # 8000a458 <_GLOBAL_OFFSET_TABLE_+0x80>
    80002254:	00000097          	auipc	ra,0x0
    80002258:	d98080e7          	jalr	-616(ra) # 80001fec <_ZN3PCBC1EPFvPvES0_S0_m>
    8000225c:	00993823          	sd	s1,16(s2)
    PCB::userPCB->start();
    80002260:	00048513          	mv	a0,s1
    80002264:	00000097          	auipc	ra,0x0
    80002268:	dd8080e7          	jalr	-552(ra) # 8000203c <_ZN3PCB5startEv>
}
    8000226c:	02813083          	ld	ra,40(sp)
    80002270:	02013403          	ld	s0,32(sp)
    80002274:	01813483          	ld	s1,24(sp)
    80002278:	01013903          	ld	s2,16(sp)
    8000227c:	00813983          	ld	s3,8(sp)
    80002280:	00013a03          	ld	s4,0(sp)
    80002284:	03010113          	addi	sp,sp,48
    80002288:	00008067          	ret

000000008000228c <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    8000228c:	ff010113          	addi	sp,sp,-16
    80002290:	00813423          	sd	s0,8(sp)
    80002294:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002298:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    8000229c:	ffd50513          	addi	a0,a0,-3
}
    800022a0:	00153513          	seqz	a0,a0
    800022a4:	00813403          	ld	s0,8(sp)
    800022a8:	01010113          	addi	sp,sp,16
    800022ac:	00008067          	ret

00000000800022b0 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    800022b0:	ff010113          	addi	sp,sp,-16
    800022b4:	00113423          	sd	ra,8(sp)
    800022b8:	00813023          	sd	s0,0(sp)
    800022bc:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800022c0:	00008797          	auipc	a5,0x8
    800022c4:	1f878793          	addi	a5,a5,504 # 8000a4b8 <_ZN3PCB7runningE>
    800022c8:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    800022cc:	0007b783          	ld	a5,0(a5)
    800022d0:	00300713          	li	a4,3
    800022d4:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    800022d8:	00000097          	auipc	ra,0x0
    800022dc:	d8c080e7          	jalr	-628(ra) # 80002064 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    800022e0:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800022e4:	00002097          	auipc	ra,0x2
    800022e8:	8e8080e7          	jalr	-1816(ra) # 80003bcc <_ZN5Riscv13w_a0_sscratchEv>
}
    800022ec:	00813083          	ld	ra,8(sp)
    800022f0:	00013403          	ld	s0,0(sp)
    800022f4:	01010113          	addi	sp,sp,16
    800022f8:	00008067          	ret

00000000800022fc <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    800022fc:	ff010113          	addi	sp,sp,-16
    80002300:	00113423          	sd	ra,8(sp)
    80002304:	00813023          	sd	s0,0(sp)
    80002308:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    8000230c:	00008797          	auipc	a5,0x8
    80002310:	1c07b223          	sd	zero,452(a5) # 8000a4d0 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002314:	00000097          	auipc	ra,0x0
    80002318:	d50080e7          	jalr	-688(ra) # 80002064 <_ZN3PCB8dispatchEv>
}
    8000231c:	00813083          	ld	ra,8(sp)
    80002320:	00013403          	ld	s0,0(sp)
    80002324:	01010113          	addi	sp,sp,16
    80002328:	00008067          	ret

000000008000232c <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    8000232c:	ff010113          	addi	sp,sp,-16
    80002330:	00113423          	sd	ra,8(sp)
    80002334:	00813023          	sd	s0,0(sp)
    80002338:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    8000233c:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002340:	00008717          	auipc	a4,0x8
    80002344:	17870713          	addi	a4,a4,376 # 8000a4b8 <_ZN3PCB7runningE>
    80002348:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    8000234c:	00073703          	ld	a4,0(a4)
    80002350:	00008697          	auipc	a3,0x8
    80002354:	0d06b683          	ld	a3,208(a3) # 8000a420 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002358:	0006b683          	ld	a3,0(a3)
    8000235c:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002360:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002364:	00001097          	auipc	ra,0x1
    80002368:	eb8080e7          	jalr	-328(ra) # 8000321c <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    8000236c:	00000097          	auipc	ra,0x0
    80002370:	cf8080e7          	jalr	-776(ra) # 80002064 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002374:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002378:	00002097          	auipc	ra,0x2
    8000237c:	854080e7          	jalr	-1964(ra) # 80003bcc <_ZN5Riscv13w_a0_sscratchEv>
}
    80002380:	00813083          	ld	ra,8(sp)
    80002384:	00013403          	ld	s0,0(sp)
    80002388:	01010113          	addi	sp,sp,16
    8000238c:	00008067          	ret

0000000080002390 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002390:	fd010113          	addi	sp,sp,-48
    80002394:	02113423          	sd	ra,40(sp)
    80002398:	02813023          	sd	s0,32(sp)
    8000239c:	00913c23          	sd	s1,24(sp)
    800023a0:	01213823          	sd	s2,16(sp)
    800023a4:	01313423          	sd	s3,8(sp)
    800023a8:	01413023          	sd	s4,0(sp)
    800023ac:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800023b0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800023b4:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    800023b8:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    800023bc:	06000513          	li	a0,96
    800023c0:	00000097          	auipc	ra,0x0
    800023c4:	d30080e7          	jalr	-720(ra) # 800020f0 <_ZN3PCBnwEm>
    800023c8:	00050493          	mv	s1,a0
    800023cc:	00200713          	li	a4,2
    800023d0:	00008697          	auipc	a3,0x8
    800023d4:	1086b683          	ld	a3,264(a3) # 8000a4d8 <_ZN3PCB10savedRegA4E>
    800023d8:	000a0613          	mv	a2,s4
    800023dc:	00098593          	mv	a1,s3
    800023e0:	00000097          	auipc	ra,0x0
    800023e4:	c0c080e7          	jalr	-1012(ra) # 80001fec <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800023e8:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    800023ec:	02048e63          	beqz	s1,80002428 <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    800023f0:	00048513          	mv	a0,s1
    800023f4:	00000097          	auipc	ra,0x0
    800023f8:	c48080e7          	jalr	-952(ra) # 8000203c <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    800023fc:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002400:	00001097          	auipc	ra,0x1
    80002404:	7cc080e7          	jalr	1996(ra) # 80003bcc <_ZN5Riscv13w_a0_sscratchEv>
}
    80002408:	02813083          	ld	ra,40(sp)
    8000240c:	02013403          	ld	s0,32(sp)
    80002410:	01813483          	ld	s1,24(sp)
    80002414:	01013903          	ld	s2,16(sp)
    80002418:	00813983          	ld	s3,8(sp)
    8000241c:	00013a03          	ld	s4,0(sp)
    80002420:	03010113          	addi	sp,sp,48
    80002424:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002428:	fff00513          	li	a0,-1
    8000242c:	fd5ff06f          	j	80002400 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002430 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002430:	ff010113          	addi	sp,sp,-16
    80002434:	00113423          	sd	ra,8(sp)
    80002438:	00813023          	sd	s0,0(sp)
    8000243c:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002440:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002444:	02050463          	beqz	a0,8000246c <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002448:	00000097          	auipc	ra,0x0
    8000244c:	bf4080e7          	jalr	-1036(ra) # 8000203c <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002450:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80002454:	00001097          	auipc	ra,0x1
    80002458:	778080e7          	jalr	1912(ra) # 80003bcc <_ZN5Riscv13w_a0_sscratchEv>
}
    8000245c:	00813083          	ld	ra,8(sp)
    80002460:	00013403          	ld	s0,0(sp)
    80002464:	01010113          	addi	sp,sp,16
    80002468:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    8000246c:	fff00513          	li	a0,-1
    80002470:	fe5ff06f          	j	80002454 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002474 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002474:	fd010113          	addi	sp,sp,-48
    80002478:	02113423          	sd	ra,40(sp)
    8000247c:	02813023          	sd	s0,32(sp)
    80002480:	00913c23          	sd	s1,24(sp)
    80002484:	01213823          	sd	s2,16(sp)
    80002488:	01313423          	sd	s3,8(sp)
    8000248c:	01413023          	sd	s4,0(sp)
    80002490:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002494:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002498:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    8000249c:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    800024a0:	06000513          	li	a0,96
    800024a4:	00000097          	auipc	ra,0x0
    800024a8:	c4c080e7          	jalr	-948(ra) # 800020f0 <_ZN3PCBnwEm>
    800024ac:	00050493          	mv	s1,a0
    800024b0:	00200713          	li	a4,2
    800024b4:	00008697          	auipc	a3,0x8
    800024b8:	0246b683          	ld	a3,36(a3) # 8000a4d8 <_ZN3PCB10savedRegA4E>
    800024bc:	000a0613          	mv	a2,s4
    800024c0:	00098593          	mv	a1,s3
    800024c4:	00000097          	auipc	ra,0x0
    800024c8:	b28080e7          	jalr	-1240(ra) # 80001fec <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800024cc:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    800024d0:	02048863          	beqz	s1,80002500 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    800024d4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800024d8:	00001097          	auipc	ra,0x1
    800024dc:	6f4080e7          	jalr	1780(ra) # 80003bcc <_ZN5Riscv13w_a0_sscratchEv>
}
    800024e0:	02813083          	ld	ra,40(sp)
    800024e4:	02013403          	ld	s0,32(sp)
    800024e8:	01813483          	ld	s1,24(sp)
    800024ec:	01013903          	ld	s2,16(sp)
    800024f0:	00813983          	ld	s3,8(sp)
    800024f4:	00013a03          	ld	s4,0(sp)
    800024f8:	03010113          	addi	sp,sp,48
    800024fc:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002500:	fff00513          	li	a0,-1
    80002504:	fd5ff06f          	j	800024d8 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002508 <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    80002508:	fe010113          	addi	sp,sp,-32
    8000250c:	00113c23          	sd	ra,24(sp)
    80002510:	00813823          	sd	s0,16(sp)
    80002514:	00913423          	sd	s1,8(sp)
    80002518:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    8000251c:	00058493          	mv	s1,a1
    if(pcb != 0)
    80002520:	02048e63          	beqz	s1,8000255c <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80002524:	00048513          	mv	a0,s1
    80002528:	00000097          	auipc	ra,0x0
    8000252c:	c18080e7          	jalr	-1000(ra) # 80002140 <_ZN3PCBD1Ev>
    80002530:	00048513          	mv	a0,s1
    80002534:	00000097          	auipc	ra,0x0
    80002538:	be4080e7          	jalr	-1052(ra) # 80002118 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    8000253c:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80002540:	00001097          	auipc	ra,0x1
    80002544:	68c080e7          	jalr	1676(ra) # 80003bcc <_ZN5Riscv13w_a0_sscratchEv>
}
    80002548:	01813083          	ld	ra,24(sp)
    8000254c:	01013403          	ld	s0,16(sp)
    80002550:	00813483          	ld	s1,8(sp)
    80002554:	02010113          	addi	sp,sp,32
    80002558:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    8000255c:	00100513          	li	a0,1
    80002560:	fe1ff06f          	j	80002540 <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080002564 <_Z15addBlockToLevelP14buddyAllocatorPvm>:

    addBlockToLevel(buddy, addr, level);
}

void addBlockToLevel(buddyAllocator* buddy, void* addr, size_t level)
{
    80002564:	ff010113          	addi	sp,sp,-16
    80002568:	00813423          	sd	s0,8(sp)
    8000256c:	01010413          	addi	s0,sp,16
    buddyBlock* newBlock = (buddyBlock*)addr;
    newBlock->next = nullptr;
    80002570:	0005b023          	sd	zero,0(a1)
    if(buddy->bucket[level].first == nullptr)
    80002574:	00260793          	addi	a5,a2,2
    80002578:	00479793          	slli	a5,a5,0x4
    8000257c:	00f507b3          	add	a5,a0,a5
    80002580:	0007b783          	ld	a5,0(a5)
    80002584:	02078463          	beqz	a5,800025ac <_Z15addBlockToLevelP14buddyAllocatorPvm+0x48>
    {
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    }
    else
    {
        buddy->bucket[level].last->next = newBlock;
    80002588:	00260613          	addi	a2,a2,2
    8000258c:	00461613          	slli	a2,a2,0x4
    80002590:	00c50633          	add	a2,a0,a2
    80002594:	00863783          	ld	a5,8(a2)
    80002598:	00b7b023          	sd	a1,0(a5)
        buddy->bucket[level].last = newBlock;
    8000259c:	00b63423          	sd	a1,8(a2)
    }
}
    800025a0:	00813403          	ld	s0,8(sp)
    800025a4:	01010113          	addi	sp,sp,16
    800025a8:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    800025ac:	00260613          	addi	a2,a2,2
    800025b0:	00461613          	slli	a2,a2,0x4
    800025b4:	00c50633          	add	a2,a0,a2
    800025b8:	00b63423          	sd	a1,8(a2)
    800025bc:	00b63023          	sd	a1,0(a2)
    800025c0:	fe1ff06f          	j	800025a0 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x3c>

00000000800025c4 <_Z17getBuddyBlockAddrPvm>:

size_t getBuddyBlockAddr(void* addr, size_t level)
{
    800025c4:	ff010113          	addi	sp,sp,-16
    800025c8:	00813423          	sd	s0,8(sp)
    800025cc:	01010413          	addi	s0,sp,16
    return (size_t)addr ^ (1 << level);
    800025d0:	00100793          	li	a5,1
    800025d4:	00b797bb          	sllw	a5,a5,a1
}
    800025d8:	00a7c533          	xor	a0,a5,a0
    800025dc:	00813403          	ld	s0,8(sp)
    800025e0:	01010113          	addi	sp,sp,16
    800025e4:	00008067          	ret

00000000800025e8 <_Z5splitP14buddyAllocatorPvmmb>:
{
    800025e8:	fd010113          	addi	sp,sp,-48
    800025ec:	02113423          	sd	ra,40(sp)
    800025f0:	02813023          	sd	s0,32(sp)
    800025f4:	00913c23          	sd	s1,24(sp)
    800025f8:	01213823          	sd	s2,16(sp)
    800025fc:	01313423          	sd	s3,8(sp)
    80002600:	01413023          	sd	s4,0(sp)
    80002604:	03010413          	addi	s0,sp,48
    80002608:	00050993          	mv	s3,a0
    8000260c:	00058a13          	mv	s4,a1
    if(!splitMore)
    80002610:	02070863          	beqz	a4,80002640 <_Z5splitP14buddyAllocatorPvmmb+0x58>
    80002614:	00060913          	mv	s2,a2
        if(currLevel == finalLevel)
    80002618:	00c68463          	beq	a3,a2,80002620 <_Z5splitP14buddyAllocatorPvmmb+0x38>
        if(currLevel > finalLevel) // condition not necessary, just for protection
    8000261c:	02d66a63          	bltu	a2,a3,80002650 <_Z5splitP14buddyAllocatorPvmmb+0x68>
}
    80002620:	02813083          	ld	ra,40(sp)
    80002624:	02013403          	ld	s0,32(sp)
    80002628:	01813483          	ld	s1,24(sp)
    8000262c:	01013903          	ld	s2,16(sp)
    80002630:	00813983          	ld	s3,8(sp)
    80002634:	00013a03          	ld	s4,0(sp)
    80002638:	03010113          	addi	sp,sp,48
    8000263c:	00008067          	ret
        addBlockToLevel(buddy, addr, currLevel);
    80002640:	00068613          	mv	a2,a3
    80002644:	00000097          	auipc	ra,0x0
    80002648:	f20080e7          	jalr	-224(ra) # 80002564 <_Z15addBlockToLevelP14buddyAllocatorPvm>
    8000264c:	fd5ff06f          	j	80002620 <_Z5splitP14buddyAllocatorPvmmb+0x38>
            size_t buddyBlock = getBuddyBlockAddr(addr, currLevel - 1); // currLevel - 1 for next step
    80002650:	fff68493          	addi	s1,a3,-1
    80002654:	00048593          	mv	a1,s1
    80002658:	000a0513          	mv	a0,s4
    8000265c:	00000097          	auipc	ra,0x0
    80002660:	f68080e7          	jalr	-152(ra) # 800025c4 <_Z17getBuddyBlockAddrPvm>
    80002664:	00050593          	mv	a1,a0
            split(buddy, (void*)buddyBlock, finalLevel, currLevel - 1, false);
    80002668:	00000713          	li	a4,0
    8000266c:	00048693          	mv	a3,s1
    80002670:	00090613          	mv	a2,s2
    80002674:	00098513          	mv	a0,s3
    80002678:	00000097          	auipc	ra,0x0
    8000267c:	f70080e7          	jalr	-144(ra) # 800025e8 <_Z5splitP14buddyAllocatorPvmmb>
            split(buddy, addr, finalLevel, currLevel - 1, true);
    80002680:	00100713          	li	a4,1
    80002684:	00048693          	mv	a3,s1
    80002688:	00090613          	mv	a2,s2
    8000268c:	000a0593          	mv	a1,s4
    80002690:	00098513          	mv	a0,s3
    80002694:	00000097          	auipc	ra,0x0
    80002698:	f54080e7          	jalr	-172(ra) # 800025e8 <_Z5splitP14buddyAllocatorPvmmb>
    8000269c:	f85ff06f          	j	80002620 <_Z5splitP14buddyAllocatorPvmmb+0x38>

00000000800026a0 <_Z11buddy_allocP14buddyAllocatorm>:
{
    800026a0:	fd010113          	addi	sp,sp,-48
    800026a4:	02113423          	sd	ra,40(sp)
    800026a8:	02813023          	sd	s0,32(sp)
    800026ac:	00913c23          	sd	s1,24(sp)
    800026b0:	01213823          	sd	s2,16(sp)
    800026b4:	01313423          	sd	s3,8(sp)
    800026b8:	01413023          	sd	s4,0(sp)
    800026bc:	03010413          	addi	s0,sp,48
    800026c0:	00050913          	mv	s2,a0
    800026c4:	00058493          	mv	s1,a1
    KConsole::trapPrintString("Buddy allocation: ");
    800026c8:	00006517          	auipc	a0,0x6
    800026cc:	a6850513          	addi	a0,a0,-1432 # 80008130 <CONSOLE_STATUS+0x120>
    800026d0:	00001097          	auipc	ra,0x1
    800026d4:	a2c080e7          	jalr	-1492(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(numOfBlocks); KConsole::trapPrintString("\n");
    800026d8:	00000613          	li	a2,0
    800026dc:	00a00593          	li	a1,10
    800026e0:	0004851b          	sext.w	a0,s1
    800026e4:	00001097          	auipc	ra,0x1
    800026e8:	a5c080e7          	jalr	-1444(ra) # 80003140 <_ZN8KConsole12trapPrintIntEiii>
    800026ec:	00006517          	auipc	a0,0x6
    800026f0:	e5c50513          	addi	a0,a0,-420 # 80008548 <CONSOLE_STATUS+0x538>
    800026f4:	00001097          	auipc	ra,0x1
    800026f8:	a08080e7          	jalr	-1528(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    size_t deg = 0;
    800026fc:	00000a13          	li	s4,0
    size_t x = 1;
    80002700:	00100793          	li	a5,1
    while(x < num)
    80002704:	0097f863          	bgeu	a5,s1,80002714 <_Z11buddy_allocP14buddyAllocatorm+0x74>
        deg++;
    80002708:	001a0a13          	addi	s4,s4,1
        x<<=1;
    8000270c:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80002710:	ff5ff06f          	j	80002704 <_Z11buddy_allocP14buddyAllocatorm+0x64>
    KConsole::trapPrintString("Level: ");
    80002714:	00006517          	auipc	a0,0x6
    80002718:	a3450513          	addi	a0,a0,-1484 # 80008148 <CONSOLE_STATUS+0x138>
    8000271c:	00001097          	auipc	ra,0x1
    80002720:	9e0080e7          	jalr	-1568(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(level); KConsole::trapPrintString("\n");
    80002724:	00000613          	li	a2,0
    80002728:	00a00593          	li	a1,10
    8000272c:	000a051b          	sext.w	a0,s4
    80002730:	00001097          	auipc	ra,0x1
    80002734:	a10080e7          	jalr	-1520(ra) # 80003140 <_ZN8KConsole12trapPrintIntEiii>
    80002738:	00006517          	auipc	a0,0x6
    8000273c:	e1050513          	addi	a0,a0,-496 # 80008548 <CONSOLE_STATUS+0x538>
    80002740:	00001097          	auipc	ra,0x1
    80002744:	9bc080e7          	jalr	-1604(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002748:	000a0493          	mv	s1,s4
    8000274c:	01893783          	ld	a5,24(s2)
    80002750:	0a97e063          	bltu	a5,s1,800027f0 <_Z11buddy_allocP14buddyAllocatorm+0x150>
        if(buddy->bucket[i].first != nullptr)
    80002754:	00248793          	addi	a5,s1,2
    80002758:	00479793          	slli	a5,a5,0x4
    8000275c:	00f907b3          	add	a5,s2,a5
    80002760:	0007b983          	ld	s3,0(a5)
    80002764:	00099663          	bnez	s3,80002770 <_Z11buddy_allocP14buddyAllocatorm+0xd0>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002768:	00148493          	addi	s1,s1,1
    8000276c:	fe1ff06f          	j	8000274c <_Z11buddy_allocP14buddyAllocatorm+0xac>
            KConsole::trapPrintString("Found the block:");
    80002770:	00006517          	auipc	a0,0x6
    80002774:	9e050513          	addi	a0,a0,-1568 # 80008150 <CONSOLE_STATUS+0x140>
    80002778:	00001097          	auipc	ra,0x1
    8000277c:	984080e7          	jalr	-1660(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
            KConsole::trapPrintInt((size_t)ret); KConsole::trapPrintString("\n");
    80002780:	00000613          	li	a2,0
    80002784:	00a00593          	li	a1,10
    80002788:	0009851b          	sext.w	a0,s3
    8000278c:	00001097          	auipc	ra,0x1
    80002790:	9b4080e7          	jalr	-1612(ra) # 80003140 <_ZN8KConsole12trapPrintIntEiii>
    80002794:	00006517          	auipc	a0,0x6
    80002798:	db450513          	addi	a0,a0,-588 # 80008548 <CONSOLE_STATUS+0x538>
    8000279c:	00001097          	auipc	ra,0x1
    800027a0:	960080e7          	jalr	-1696(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
            buddy->bucket[i].first = ret->next;
    800027a4:	0009b703          	ld	a4,0(s3)
    800027a8:	00248793          	addi	a5,s1,2
    800027ac:	00479793          	slli	a5,a5,0x4
    800027b0:	00f907b3          	add	a5,s2,a5
    800027b4:	00e7b023          	sd	a4,0(a5)
            if(buddy->bucket[i].first == nullptr)
    800027b8:	02070263          	beqz	a4,800027dc <_Z11buddy_allocP14buddyAllocatorm+0x13c>
            split(buddy, (void*)ret, level, i, true);
    800027bc:	00100713          	li	a4,1
    800027c0:	00048693          	mv	a3,s1
    800027c4:	000a0613          	mv	a2,s4
    800027c8:	00098593          	mv	a1,s3
    800027cc:	00090513          	mv	a0,s2
    800027d0:	00000097          	auipc	ra,0x0
    800027d4:	e18080e7          	jalr	-488(ra) # 800025e8 <_Z5splitP14buddyAllocatorPvmmb>
            return ret;
    800027d8:	01c0006f          	j	800027f4 <_Z11buddy_allocP14buddyAllocatorm+0x154>
                buddy->bucket[i].last = nullptr;
    800027dc:	00248793          	addi	a5,s1,2
    800027e0:	00479793          	slli	a5,a5,0x4
    800027e4:	00f907b3          	add	a5,s2,a5
    800027e8:	0007b423          	sd	zero,8(a5)
    800027ec:	fd1ff06f          	j	800027bc <_Z11buddy_allocP14buddyAllocatorm+0x11c>
    return nullptr;
    800027f0:	00000993          	li	s3,0
}
    800027f4:	00098513          	mv	a0,s3
    800027f8:	02813083          	ld	ra,40(sp)
    800027fc:	02013403          	ld	s0,32(sp)
    80002800:	01813483          	ld	s1,24(sp)
    80002804:	01013903          	ld	s2,16(sp)
    80002808:	00813983          	ld	s3,8(sp)
    8000280c:	00013a03          	ld	s4,0(sp)
    80002810:	03010113          	addi	sp,sp,48
    80002814:	00008067          	ret

0000000080002818 <_Z9addBlocksP14buddyAllocatorPvm>:
{
    80002818:	fd010113          	addi	sp,sp,-48
    8000281c:	02113423          	sd	ra,40(sp)
    80002820:	02813023          	sd	s0,32(sp)
    80002824:	00913c23          	sd	s1,24(sp)
    80002828:	01213823          	sd	s2,16(sp)
    8000282c:	01313423          	sd	s3,8(sp)
    80002830:	03010413          	addi	s0,sp,48
    80002834:	00050913          	mv	s2,a0
    80002838:	00058993          	mv	s3,a1
    size_t deg = 0;
    8000283c:	00000493          	li	s1,0
    size_t x = 1;
    80002840:	00100793          	li	a5,1
    while(x < num)
    80002844:	00c7f863          	bgeu	a5,a2,80002854 <_Z9addBlocksP14buddyAllocatorPvm+0x3c>
        deg++;
    80002848:	00148493          	addi	s1,s1,1
        x<<=1;
    8000284c:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80002850:	ff5ff06f          	j	80002844 <_Z9addBlocksP14buddyAllocatorPvm+0x2c>
    if(level == buddy->maxLevel)
    80002854:	01893783          	ld	a5,24(s2)
    80002858:	02978e63          	beq	a5,s1,80002894 <_Z9addBlocksP14buddyAllocatorPvm+0x7c>
    size_t buddyBlockAddr = getBuddyBlockAddr(addr, level);
    8000285c:	00048593          	mv	a1,s1
    80002860:	00098513          	mv	a0,s3
    80002864:	00000097          	auipc	ra,0x0
    80002868:	d60080e7          	jalr	-672(ra) # 800025c4 <_Z17getBuddyBlockAddrPvm>
    buddyBlock* curr = buddy->bucket[level].first;
    8000286c:	00248793          	addi	a5,s1,2
    80002870:	00479793          	slli	a5,a5,0x4
    80002874:	00f907b3          	add	a5,s2,a5
    80002878:	0007b783          	ld	a5,0(a5)
    buddyBlock* prev = nullptr;
    8000287c:	00000713          	li	a4,0
    while(curr != nullptr)
    80002880:	0c078c63          	beqz	a5,80002958 <_Z9addBlocksP14buddyAllocatorPvm+0x140>
        if((size_t)curr == buddyBlockAddr)
    80002884:	02a78463          	beq	a5,a0,800028ac <_Z9addBlocksP14buddyAllocatorPvm+0x94>
        prev = curr;
    80002888:	00078713          	mv	a4,a5
        curr = curr->next;
    8000288c:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    80002890:	ff1ff06f          	j	80002880 <_Z9addBlocksP14buddyAllocatorPvm+0x68>
        addBlockToLevel(buddy, addr, level);
    80002894:	00048613          	mv	a2,s1
    80002898:	00098593          	mv	a1,s3
    8000289c:	00090513          	mv	a0,s2
    800028a0:	00000097          	auipc	ra,0x0
    800028a4:	cc4080e7          	jalr	-828(ra) # 80002564 <_Z15addBlockToLevelP14buddyAllocatorPvm>
        return;
    800028a8:	0c40006f          	j	8000296c <_Z9addBlocksP14buddyAllocatorPvm+0x154>
            if(prev != nullptr)
    800028ac:	04070c63          	beqz	a4,80002904 <_Z9addBlocksP14buddyAllocatorPvm+0xec>
                prev->next = curr->next;
    800028b0:	0007b683          	ld	a3,0(a5)
    800028b4:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    800028b8:	00248693          	addi	a3,s1,2
    800028bc:	00469693          	slli	a3,a3,0x4
    800028c0:	00d906b3          	add	a3,s2,a3
    800028c4:	0086b683          	ld	a3,8(a3)
    800028c8:	02f68463          	beq	a3,a5,800028f0 <_Z9addBlocksP14buddyAllocatorPvm+0xd8>
            if((size_t)addr < buddyBlockAddr) addBlocks(buddy, addr, 1 << (level + 1));
    800028cc:	06a9f663          	bgeu	s3,a0,80002938 <_Z9addBlocksP14buddyAllocatorPvm+0x120>
    800028d0:	0014849b          	addiw	s1,s1,1
    800028d4:	00100613          	li	a2,1
    800028d8:	0096163b          	sllw	a2,a2,s1
    800028dc:	00098593          	mv	a1,s3
    800028e0:	00090513          	mv	a0,s2
    800028e4:	00000097          	auipc	ra,0x0
    800028e8:	f34080e7          	jalr	-204(ra) # 80002818 <_Z9addBlocksP14buddyAllocatorPvm>
    800028ec:	0800006f          	j	8000296c <_Z9addBlocksP14buddyAllocatorPvm+0x154>
                    buddy->bucket[level].last = prev;
    800028f0:	00248793          	addi	a5,s1,2
    800028f4:	00479793          	slli	a5,a5,0x4
    800028f8:	00f907b3          	add	a5,s2,a5
    800028fc:	00e7b423          	sd	a4,8(a5)
    80002900:	fcdff06f          	j	800028cc <_Z9addBlocksP14buddyAllocatorPvm+0xb4>
                if(curr->next == nullptr)
    80002904:	0007b703          	ld	a4,0(a5)
    80002908:	00070c63          	beqz	a4,80002920 <_Z9addBlocksP14buddyAllocatorPvm+0x108>
                    buddy->bucket[level].first = curr->next;
    8000290c:	00248793          	addi	a5,s1,2
    80002910:	00479793          	slli	a5,a5,0x4
    80002914:	00f907b3          	add	a5,s2,a5
    80002918:	00e7b023          	sd	a4,0(a5)
    8000291c:	fb1ff06f          	j	800028cc <_Z9addBlocksP14buddyAllocatorPvm+0xb4>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80002920:	00248793          	addi	a5,s1,2
    80002924:	00479793          	slli	a5,a5,0x4
    80002928:	00f907b3          	add	a5,s2,a5
    8000292c:	0007b423          	sd	zero,8(a5)
    80002930:	0007b023          	sd	zero,0(a5)
    80002934:	f99ff06f          	j	800028cc <_Z9addBlocksP14buddyAllocatorPvm+0xb4>
            else addBlocks(buddy, (void*)buddyBlockAddr, 1 << (level + 1));
    80002938:	0014849b          	addiw	s1,s1,1
    8000293c:	00100613          	li	a2,1
    80002940:	0096163b          	sllw	a2,a2,s1
    80002944:	00050593          	mv	a1,a0
    80002948:	00090513          	mv	a0,s2
    8000294c:	00000097          	auipc	ra,0x0
    80002950:	ecc080e7          	jalr	-308(ra) # 80002818 <_Z9addBlocksP14buddyAllocatorPvm>
            return;
    80002954:	0180006f          	j	8000296c <_Z9addBlocksP14buddyAllocatorPvm+0x154>
    addBlockToLevel(buddy, addr, level);
    80002958:	00048613          	mv	a2,s1
    8000295c:	00098593          	mv	a1,s3
    80002960:	00090513          	mv	a0,s2
    80002964:	00000097          	auipc	ra,0x0
    80002968:	c00080e7          	jalr	-1024(ra) # 80002564 <_Z15addBlockToLevelP14buddyAllocatorPvm>
}
    8000296c:	02813083          	ld	ra,40(sp)
    80002970:	02013403          	ld	s0,32(sp)
    80002974:	01813483          	ld	s1,24(sp)
    80002978:	01013903          	ld	s2,16(sp)
    8000297c:	00813983          	ld	s3,8(sp)
    80002980:	03010113          	addi	sp,sp,48
    80002984:	00008067          	ret

0000000080002988 <_Z10buddy_initPvm>:
{
    80002988:	fd010113          	addi	sp,sp,-48
    8000298c:	02113423          	sd	ra,40(sp)
    80002990:	02813023          	sd	s0,32(sp)
    80002994:	00913c23          	sd	s1,24(sp)
    80002998:	01213823          	sd	s2,16(sp)
    8000299c:	01313423          	sd	s3,8(sp)
    800029a0:	03010413          	addi	s0,sp,48
    800029a4:	00050913          	mv	s2,a0
    800029a8:	00058993          	mv	s3,a1
    KConsole::trapPrintString("Buddy initialization\n");
    800029ac:	00005517          	auipc	a0,0x5
    800029b0:	7bc50513          	addi	a0,a0,1980 # 80008168 <CONSOLE_STATUS+0x158>
    800029b4:	00000097          	auipc	ra,0x0
    800029b8:	748080e7          	jalr	1864(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    size_t blockAddr = getBlockAddr((size_t)addr);
    800029bc:	00090493          	mv	s1,s2
    return addr & mask;
    800029c0:	fffff537          	lui	a0,0xfffff
    800029c4:	00a97933          	and	s2,s2,a0
    if((size_t)addr != blockAddr) // if start address not aligned
    800029c8:	01248863          	beq	s1,s2,800029d8 <_Z10buddy_initPvm+0x50>
    return currBlock + BLOCK_SIZE;
    800029cc:	000014b7          	lui	s1,0x1
    800029d0:	009904b3          	add	s1,s2,s1
        numOfBlocks--;
    800029d4:	fff98993          	addi	s3,s3,-1
    KConsole::trapPrintString("Buddy starting address: ");
    800029d8:	00005517          	auipc	a0,0x5
    800029dc:	7a850513          	addi	a0,a0,1960 # 80008180 <CONSOLE_STATUS+0x170>
    800029e0:	00000097          	auipc	ra,0x0
    800029e4:	71c080e7          	jalr	1820(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(buddyAddr); KConsole::trapPrintString("\n");
    800029e8:	00000613          	li	a2,0
    800029ec:	00a00593          	li	a1,10
    800029f0:	0004851b          	sext.w	a0,s1
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	74c080e7          	jalr	1868(ra) # 80003140 <_ZN8KConsole12trapPrintIntEiii>
    800029fc:	00006517          	auipc	a0,0x6
    80002a00:	b4c50513          	addi	a0,a0,-1204 # 80008548 <CONSOLE_STATUS+0x538>
    80002a04:	00000097          	auipc	ra,0x0
    80002a08:	6f8080e7          	jalr	1784(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    numOfBlocks--; // take one block for buddy metadata
    80002a0c:	fff98993          	addi	s3,s3,-1
    buddyAllocator* buddy = (buddyAllocator*)buddyAddr;
    80002a10:	00048913          	mv	s2,s1
    return addr & mask;
    80002a14:	fffff7b7          	lui	a5,0xfffff
    80002a18:	00f4f7b3          	and	a5,s1,a5
    return currBlock + BLOCK_SIZE;
    80002a1c:	00001737          	lui	a4,0x1
    80002a20:	00e787b3          	add	a5,a5,a4
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    80002a24:	00f4b423          	sd	a5,8(s1) # 1008 <_entry-0x7fffeff8>
    buddy->numOfBlocks = numOfBlocks;
    80002a28:	0134b023          	sd	s3,0(s1)
    buddy->numOfFreeBlocks = numOfBlocks;
    80002a2c:	0134b823          	sd	s3,16(s1)
    size_t deg = 0;
    80002a30:	00000793          	li	a5,0
    size_t x = 1;
    80002a34:	00100713          	li	a4,1
    while(x <= num)
    80002a38:	00e9e863          	bltu	s3,a4,80002a48 <_Z10buddy_initPvm+0xc0>
        deg++;
    80002a3c:	00178793          	addi	a5,a5,1 # fffffffffffff001 <end+0xffffffff7ffef831>
        x<<=1;
    80002a40:	00171713          	slli	a4,a4,0x1
    while(x <= num)
    80002a44:	ff5ff06f          	j	80002a38 <_Z10buddy_initPvm+0xb0>
    return deg - 1;
    80002a48:	fff78693          	addi	a3,a5,-1
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    80002a4c:	00d93c23          	sd	a3,24(s2)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002a50:	00000713          	li	a4,0
    80002a54:	02e6e063          	bltu	a3,a4,80002a74 <_Z10buddy_initPvm+0xec>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    80002a58:	00270793          	addi	a5,a4,2 # 1002 <_entry-0x7fffeffe>
    80002a5c:	00479793          	slli	a5,a5,0x4
    80002a60:	00f907b3          	add	a5,s2,a5
    80002a64:	0007b423          	sd	zero,8(a5)
    80002a68:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002a6c:	00170713          	addi	a4,a4,1
    80002a70:	fe5ff06f          	j	80002a54 <_Z10buddy_initPvm+0xcc>
    for(size_t i = 0;i < numOfBlocks;i++)
    80002a74:	00000493          	li	s1,0
    80002a78:	0334f463          	bgeu	s1,s3,80002aa0 <_Z10buddy_initPvm+0x118>
        addBlocks(buddy, (block*)buddy->startAddr + i, 1);
    80002a7c:	00893583          	ld	a1,8(s2)
    80002a80:	00c49793          	slli	a5,s1,0xc
    80002a84:	00100613          	li	a2,1
    80002a88:	00f585b3          	add	a1,a1,a5
    80002a8c:	00090513          	mv	a0,s2
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	d88080e7          	jalr	-632(ra) # 80002818 <_Z9addBlocksP14buddyAllocatorPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    80002a98:	00148493          	addi	s1,s1,1
    80002a9c:	fddff06f          	j	80002a78 <_Z10buddy_initPvm+0xf0>
}
    80002aa0:	00090513          	mv	a0,s2
    80002aa4:	02813083          	ld	ra,40(sp)
    80002aa8:	02013403          	ld	s0,32(sp)
    80002aac:	01813483          	ld	s1,24(sp)
    80002ab0:	01013903          	ld	s2,16(sp)
    80002ab4:	00813983          	ld	s3,8(sp)
    80002ab8:	03010113          	addi	sp,sp,48
    80002abc:	00008067          	ret

0000000080002ac0 <_Z10buddy_freeP14buddyAllocatorPvm>:
{
    80002ac0:	fd010113          	addi	sp,sp,-48
    80002ac4:	02113423          	sd	ra,40(sp)
    80002ac8:	02813023          	sd	s0,32(sp)
    80002acc:	00913c23          	sd	s1,24(sp)
    80002ad0:	01213823          	sd	s2,16(sp)
    80002ad4:	01313423          	sd	s3,8(sp)
    80002ad8:	03010413          	addi	s0,sp,48
    80002adc:	00050993          	mv	s3,a0
    80002ae0:	00058493          	mv	s1,a1
    80002ae4:	00060913          	mv	s2,a2
    KConsole::trapPrintString("Buddy free: ");
    80002ae8:	00005517          	auipc	a0,0x5
    80002aec:	6b850513          	addi	a0,a0,1720 # 800081a0 <CONSOLE_STATUS+0x190>
    80002af0:	00000097          	auipc	ra,0x0
    80002af4:	60c080e7          	jalr	1548(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt((size_t)addr); KConsole::trapPrintString(" ");
    80002af8:	00000613          	li	a2,0
    80002afc:	00a00593          	li	a1,10
    80002b00:	0004851b          	sext.w	a0,s1
    80002b04:	00000097          	auipc	ra,0x0
    80002b08:	63c080e7          	jalr	1596(ra) # 80003140 <_ZN8KConsole12trapPrintIntEiii>
    80002b0c:	00005517          	auipc	a0,0x5
    80002b10:	6a450513          	addi	a0,a0,1700 # 800081b0 <CONSOLE_STATUS+0x1a0>
    80002b14:	00000097          	auipc	ra,0x0
    80002b18:	5e8080e7          	jalr	1512(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(numOfBlocks); KConsole::trapPrintString("\n");
    80002b1c:	00000613          	li	a2,0
    80002b20:	00a00593          	li	a1,10
    80002b24:	0009051b          	sext.w	a0,s2
    80002b28:	00000097          	auipc	ra,0x0
    80002b2c:	618080e7          	jalr	1560(ra) # 80003140 <_ZN8KConsole12trapPrintIntEiii>
    80002b30:	00006517          	auipc	a0,0x6
    80002b34:	a1850513          	addi	a0,a0,-1512 # 80008548 <CONSOLE_STATUS+0x538>
    80002b38:	00000097          	auipc	ra,0x0
    80002b3c:	5c4080e7          	jalr	1476(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    addBlocks(buddy, addr, numOfBlocks);
    80002b40:	00090613          	mv	a2,s2
    80002b44:	00048593          	mv	a1,s1
    80002b48:	00098513          	mv	a0,s3
    80002b4c:	00000097          	auipc	ra,0x0
    80002b50:	ccc080e7          	jalr	-820(ra) # 80002818 <_Z9addBlocksP14buddyAllocatorPvm>
}
    80002b54:	02813083          	ld	ra,40(sp)
    80002b58:	02013403          	ld	s0,32(sp)
    80002b5c:	01813483          	ld	s1,24(sp)
    80002b60:	01013903          	ld	s2,16(sp)
    80002b64:	00813983          	ld	s3,8(sp)
    80002b68:	03010113          	addi	sp,sp,48
    80002b6c:	00008067          	ret

0000000080002b70 <_Z14printBuddyInfoP14buddyAllocator>:

void printBuddyInfo(buddyAllocator* buddy)
{
    80002b70:	fd010113          	addi	sp,sp,-48
    80002b74:	02113423          	sd	ra,40(sp)
    80002b78:	02813023          	sd	s0,32(sp)
    80002b7c:	00913c23          	sd	s1,24(sp)
    80002b80:	01213823          	sd	s2,16(sp)
    80002b84:	01313423          	sd	s3,8(sp)
    80002b88:	03010413          	addi	s0,sp,48
    80002b8c:	00050993          	mv	s3,a0
    KConsole::trapPrintString("Buddy info\n--------------\n");
    80002b90:	00005517          	auipc	a0,0x5
    80002b94:	62850513          	addi	a0,a0,1576 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80002b98:	00000097          	auipc	ra,0x0
    80002b9c:	564080e7          	jalr	1380(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
    for(int i = buddy->maxLevel;i>=0;i--)
    80002ba0:	0189a903          	lw	s2,24(s3)
    80002ba4:	0080006f          	j	80002bac <_Z14printBuddyInfoP14buddyAllocator+0x3c>
    80002ba8:	fff9091b          	addiw	s2,s2,-1
    80002bac:	08094463          	bltz	s2,80002c34 <_Z14printBuddyInfoP14buddyAllocator+0xc4>
    {
        KConsole::trapPrintString("Level ");
    80002bb0:	00005517          	auipc	a0,0x5
    80002bb4:	62850513          	addi	a0,a0,1576 # 800081d8 <CONSOLE_STATUS+0x1c8>
    80002bb8:	00000097          	auipc	ra,0x0
    80002bbc:	544080e7          	jalr	1348(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
        KConsole::trapPrintInt(i);KConsole::trapPrintString("\n");
    80002bc0:	00000613          	li	a2,0
    80002bc4:	00a00593          	li	a1,10
    80002bc8:	00090513          	mv	a0,s2
    80002bcc:	00000097          	auipc	ra,0x0
    80002bd0:	574080e7          	jalr	1396(ra) # 80003140 <_ZN8KConsole12trapPrintIntEiii>
    80002bd4:	00006517          	auipc	a0,0x6
    80002bd8:	97450513          	addi	a0,a0,-1676 # 80008548 <CONSOLE_STATUS+0x538>
    80002bdc:	00000097          	auipc	ra,0x0
    80002be0:	520080e7          	jalr	1312(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
        KConsole::trapPrintString("Free blocks on this level\n");
    80002be4:	00005517          	auipc	a0,0x5
    80002be8:	5fc50513          	addi	a0,a0,1532 # 800081e0 <CONSOLE_STATUS+0x1d0>
    80002bec:	00000097          	auipc	ra,0x0
    80002bf0:	510080e7          	jalr	1296(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
        buddyBlock* curr = buddy->bucket[i].first;
    80002bf4:	00290793          	addi	a5,s2,2
    80002bf8:	00479793          	slli	a5,a5,0x4
    80002bfc:	00f987b3          	add	a5,s3,a5
    80002c00:	0007b483          	ld	s1,0(a5)
        while(curr != 0)
    80002c04:	fa0482e3          	beqz	s1,80002ba8 <_Z14printBuddyInfoP14buddyAllocator+0x38>
        {
            KConsole::trapPrintInt((size_t)curr);
    80002c08:	00000613          	li	a2,0
    80002c0c:	00a00593          	li	a1,10
    80002c10:	0004851b          	sext.w	a0,s1
    80002c14:	00000097          	auipc	ra,0x0
    80002c18:	52c080e7          	jalr	1324(ra) # 80003140 <_ZN8KConsole12trapPrintIntEiii>
            KConsole::trapPrintString("\n");
    80002c1c:	00006517          	auipc	a0,0x6
    80002c20:	92c50513          	addi	a0,a0,-1748 # 80008548 <CONSOLE_STATUS+0x538>
    80002c24:	00000097          	auipc	ra,0x0
    80002c28:	4d8080e7          	jalr	1240(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
            curr = curr->next;
    80002c2c:	0004b483          	ld	s1,0(s1)
        while(curr != 0)
    80002c30:	fd5ff06f          	j	80002c04 <_Z14printBuddyInfoP14buddyAllocator+0x94>
        }
    }
    80002c34:	02813083          	ld	ra,40(sp)
    80002c38:	02013403          	ld	s0,32(sp)
    80002c3c:	01813483          	ld	s1,24(sp)
    80002c40:	01013903          	ld	s2,16(sp)
    80002c44:	00813983          	ld	s3,8(sp)
    80002c48:	03010113          	addi	sp,sp,48
    80002c4c:	00008067          	ret

0000000080002c50 <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    80002c50:	fe010113          	addi	sp,sp,-32
    80002c54:	00113c23          	sd	ra,24(sp)
    80002c58:	00813823          	sd	s0,16(sp)
    80002c5c:	00913423          	sd	s1,8(sp)
    80002c60:	01213023          	sd	s2,0(sp)
    80002c64:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002c68:	01800513          	li	a0,24
    80002c6c:	00002097          	auipc	ra,0x2
    80002c70:	9f8080e7          	jalr	-1544(ra) # 80004664 <_ZN10KSemaphorenwEm>
    80002c74:	00050493          	mv	s1,a0
    80002c78:	00000593          	li	a1,0
    80002c7c:	00001097          	auipc	ra,0x1
    80002c80:	784080e7          	jalr	1924(ra) # 80004400 <_ZN10KSemaphoreC1Ei>
    80002c84:	00008797          	auipc	a5,0x8
    80002c88:	8497be23          	sd	s1,-1956(a5) # 8000a4e0 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002c8c:	01800513          	li	a0,24
    80002c90:	00002097          	auipc	ra,0x2
    80002c94:	9d4080e7          	jalr	-1580(ra) # 80004664 <_ZN10KSemaphorenwEm>
    80002c98:	00050493          	mv	s1,a0
    80002c9c:	00000593          	li	a1,0
    80002ca0:	00001097          	auipc	ra,0x1
    80002ca4:	760080e7          	jalr	1888(ra) # 80004400 <_ZN10KSemaphoreC1Ei>
    80002ca8:	00008797          	auipc	a5,0x8
    80002cac:	8497b023          	sd	s1,-1984(a5) # 8000a4e8 <_ZN8KConsole19hasCharactersOutputE>
}
    80002cb0:	01813083          	ld	ra,24(sp)
    80002cb4:	01013403          	ld	s0,16(sp)
    80002cb8:	00813483          	ld	s1,8(sp)
    80002cbc:	00013903          	ld	s2,0(sp)
    80002cc0:	02010113          	addi	sp,sp,32
    80002cc4:	00008067          	ret
    80002cc8:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002ccc:	00048513          	mv	a0,s1
    80002cd0:	00002097          	auipc	ra,0x2
    80002cd4:	a34080e7          	jalr	-1484(ra) # 80004704 <_ZN10KSemaphoredlEPv>
    80002cd8:	00090513          	mv	a0,s2
    80002cdc:	0000d097          	auipc	ra,0xd
    80002ce0:	95c080e7          	jalr	-1700(ra) # 8000f638 <_Unwind_Resume>
    80002ce4:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002ce8:	00048513          	mv	a0,s1
    80002cec:	00002097          	auipc	ra,0x2
    80002cf0:	a18080e7          	jalr	-1512(ra) # 80004704 <_ZN10KSemaphoredlEPv>
    80002cf4:	00090513          	mv	a0,s2
    80002cf8:	0000d097          	auipc	ra,0xd
    80002cfc:	940080e7          	jalr	-1728(ra) # 8000f638 <_Unwind_Resume>

0000000080002d00 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80002d00:	00007697          	auipc	a3,0x7
    80002d04:	7e068693          	addi	a3,a3,2016 # 8000a4e0 <_ZN8KConsole18hasCharactersInputE>
    80002d08:	0106b603          	ld	a2,16(a3)
    80002d0c:	00160793          	addi	a5,a2,1
    80002d10:	00002737          	lui	a4,0x2
    80002d14:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002d18:	00e7f7b3          	and	a5,a5,a4
    80002d1c:	0186b703          	ld	a4,24(a3)
    80002d20:	04e78263          	beq	a5,a4,80002d64 <_ZN8KConsole17putCharacterInputEc+0x64>
{
    80002d24:	ff010113          	addi	sp,sp,-16
    80002d28:	00113423          	sd	ra,8(sp)
    80002d2c:	00813023          	sd	s0,0(sp)
    80002d30:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    80002d34:	00009717          	auipc	a4,0x9
    80002d38:	7ec70713          	addi	a4,a4,2028 # 8000c520 <_ZN8KConsole11inputBufferE>
    80002d3c:	00c70633          	add	a2,a4,a2
    80002d40:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    80002d44:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    80002d48:	0006b503          	ld	a0,0(a3)
    80002d4c:	00002097          	auipc	ra,0x2
    80002d50:	8d0080e7          	jalr	-1840(ra) # 8000461c <_ZN10KSemaphore6signalEv>
}
    80002d54:	00813083          	ld	ra,8(sp)
    80002d58:	00013403          	ld	s0,0(sp)
    80002d5c:	01010113          	addi	sp,sp,16
    80002d60:	00008067          	ret
    80002d64:	00008067          	ret

0000000080002d68 <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    80002d68:	00007797          	auipc	a5,0x7
    80002d6c:	6807b783          	ld	a5,1664(a5) # 8000a3e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002d70:	0007b783          	ld	a5,0(a5)
    80002d74:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    80002d78:	0017f793          	andi	a5,a5,1
    80002d7c:	02078063          	beqz	a5,80002d9c <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    80002d80:	00007797          	auipc	a5,0x7
    80002d84:	6887b783          	ld	a5,1672(a5) # 8000a408 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002d88:	0007b783          	ld	a5,0(a5)
    80002d8c:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    80002d90:	00007797          	auipc	a5,0x7
    80002d94:	7707b783          	ld	a5,1904(a5) # 8000a500 <_ZN8KConsole11pendingGetcE>
    80002d98:	00079463          	bnez	a5,80002da0 <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    80002d9c:	00008067          	ret
{
    80002da0:	ff010113          	addi	sp,sp,-16
    80002da4:	00113423          	sd	ra,8(sp)
    80002da8:	00813023          	sd	s0,0(sp)
    80002dac:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    80002db0:	fff78793          	addi	a5,a5,-1
    80002db4:	00007717          	auipc	a4,0x7
    80002db8:	74f73623          	sd	a5,1868(a4) # 8000a500 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    80002dbc:	00000097          	auipc	ra,0x0
    80002dc0:	f44080e7          	jalr	-188(ra) # 80002d00 <_ZN8KConsole17putCharacterInputEc>
}
    80002dc4:	00813083          	ld	ra,8(sp)
    80002dc8:	00013403          	ld	s0,0(sp)
    80002dcc:	01010113          	addi	sp,sp,16
    80002dd0:	00008067          	ret

0000000080002dd4 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002dd4:	fe010113          	addi	sp,sp,-32
    80002dd8:	00113c23          	sd	ra,24(sp)
    80002ddc:	00813823          	sd	s0,16(sp)
    80002de0:	00913423          	sd	s1,8(sp)
    80002de4:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80002de8:	00007497          	auipc	s1,0x7
    80002dec:	6f848493          	addi	s1,s1,1784 # 8000a4e0 <_ZN8KConsole18hasCharactersInputE>
    80002df0:	0004b503          	ld	a0,0(s1)
    80002df4:	00001097          	auipc	ra,0x1
    80002df8:	6b0080e7          	jalr	1712(ra) # 800044a4 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80002dfc:	0184b783          	ld	a5,24(s1)
    80002e00:	0104b703          	ld	a4,16(s1)
    80002e04:	04e78063          	beq	a5,a4,80002e44 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80002e08:	00009717          	auipc	a4,0x9
    80002e0c:	71870713          	addi	a4,a4,1816 # 8000c520 <_ZN8KConsole11inputBufferE>
    80002e10:	00f70733          	add	a4,a4,a5
    80002e14:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    80002e18:	00178793          	addi	a5,a5,1
    80002e1c:	00002737          	lui	a4,0x2
    80002e20:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002e24:	00e7f7b3          	and	a5,a5,a4
    80002e28:	00007717          	auipc	a4,0x7
    80002e2c:	6cf73823          	sd	a5,1744(a4) # 8000a4f8 <_ZN8KConsole9inputHeadE>
    return c;
}
    80002e30:	01813083          	ld	ra,24(sp)
    80002e34:	01013403          	ld	s0,16(sp)
    80002e38:	00813483          	ld	s1,8(sp)
    80002e3c:	02010113          	addi	sp,sp,32
    80002e40:	00008067          	ret
        return -1;
    80002e44:	0ff00513          	li	a0,255
    80002e48:	fe9ff06f          	j	80002e30 <_ZN8KConsole17getCharacterInputEv+0x5c>

0000000080002e4c <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80002e4c:	00007697          	auipc	a3,0x7
    80002e50:	69468693          	addi	a3,a3,1684 # 8000a4e0 <_ZN8KConsole18hasCharactersInputE>
    80002e54:	0286b603          	ld	a2,40(a3)
    80002e58:	00160793          	addi	a5,a2,1
    80002e5c:	00002737          	lui	a4,0x2
    80002e60:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002e64:	00e7f7b3          	and	a5,a5,a4
    80002e68:	0306b703          	ld	a4,48(a3)
    80002e6c:	04e78a63          	beq	a5,a4,80002ec0 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    80002e70:	ff010113          	addi	sp,sp,-16
    80002e74:	00113423          	sd	ra,8(sp)
    80002e78:	00813023          	sd	s0,0(sp)
    80002e7c:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80002e80:	00068713          	mv	a4,a3
    80002e84:	0386b683          	ld	a3,56(a3)
    80002e88:	00168693          	addi	a3,a3,1
    80002e8c:	02d73c23          	sd	a3,56(a4)
    outputBuffer[outputTail] = c;
    80002e90:	00007697          	auipc	a3,0x7
    80002e94:	69068693          	addi	a3,a3,1680 # 8000a520 <_ZN8KConsole12outputBufferE>
    80002e98:	00c68633          	add	a2,a3,a2
    80002e9c:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80002ea0:	02f73423          	sd	a5,40(a4)
    hasCharactersOutput->signal();
    80002ea4:	00873503          	ld	a0,8(a4)
    80002ea8:	00001097          	auipc	ra,0x1
    80002eac:	774080e7          	jalr	1908(ra) # 8000461c <_ZN10KSemaphore6signalEv>
}
    80002eb0:	00813083          	ld	ra,8(sp)
    80002eb4:	00013403          	ld	s0,0(sp)
    80002eb8:	01010113          	addi	sp,sp,16
    80002ebc:	00008067          	ret
    80002ec0:	00008067          	ret

0000000080002ec4 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80002ec4:	fe010113          	addi	sp,sp,-32
    80002ec8:	00113c23          	sd	ra,24(sp)
    80002ecc:	00813823          	sd	s0,16(sp)
    80002ed0:	00913423          	sd	s1,8(sp)
    80002ed4:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80002ed8:	00007497          	auipc	s1,0x7
    80002edc:	60848493          	addi	s1,s1,1544 # 8000a4e0 <_ZN8KConsole18hasCharactersInputE>
    80002ee0:	0084b503          	ld	a0,8(s1)
    80002ee4:	00001097          	auipc	ra,0x1
    80002ee8:	5c0080e7          	jalr	1472(ra) # 800044a4 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80002eec:	0304b783          	ld	a5,48(s1)
    80002ef0:	0284b703          	ld	a4,40(s1)
    80002ef4:	04e78063          	beq	a5,a4,80002f34 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;
    char c = outputBuffer[outputHead];
    80002ef8:	00007717          	auipc	a4,0x7
    80002efc:	62870713          	addi	a4,a4,1576 # 8000a520 <_ZN8KConsole12outputBufferE>
    80002f00:	00f70733          	add	a4,a4,a5
    80002f04:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    80002f08:	00178793          	addi	a5,a5,1
    80002f0c:	00002737          	lui	a4,0x2
    80002f10:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002f14:	00e7f7b3          	and	a5,a5,a4
    80002f18:	00007717          	auipc	a4,0x7
    80002f1c:	5ef73c23          	sd	a5,1528(a4) # 8000a510 <_ZN8KConsole10outputHeadE>
    return c;
}
    80002f20:	01813083          	ld	ra,24(sp)
    80002f24:	01013403          	ld	s0,16(sp)
    80002f28:	00813483          	ld	s1,8(sp)
    80002f2c:	02010113          	addi	sp,sp,32
    80002f30:	00008067          	ret
        return -1;
    80002f34:	0ff00513          	li	a0,255
    80002f38:	fe9ff06f          	j	80002f20 <_ZN8KConsole18getCharacterOutputEv+0x5c>

0000000080002f3c <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    80002f3c:	ff010113          	addi	sp,sp,-16
    80002f40:	00113423          	sd	ra,8(sp)
    80002f44:	00813023          	sd	s0,0(sp)
    80002f48:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    80002f4c:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    80002f50:	0ff57513          	andi	a0,a0,255
    80002f54:	00000097          	auipc	ra,0x0
    80002f58:	ef8080e7          	jalr	-264(ra) # 80002e4c <_ZN8KConsole18putCharacterOutputEc>
}
    80002f5c:	00813083          	ld	ra,8(sp)
    80002f60:	00013403          	ld	s0,0(sp)
    80002f64:	01010113          	addi	sp,sp,16
    80002f68:	00008067          	ret

0000000080002f6c <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    80002f6c:	fe010113          	addi	sp,sp,-32
    80002f70:	00113c23          	sd	ra,24(sp)
    80002f74:	00813823          	sd	s0,16(sp)
    80002f78:	00913423          	sd	s1,8(sp)
    80002f7c:	02010413          	addi	s0,sp,32
    pendingGetc++;
    80002f80:	00007717          	auipc	a4,0x7
    80002f84:	56070713          	addi	a4,a4,1376 # 8000a4e0 <_ZN8KConsole18hasCharactersInputE>
    80002f88:	02073783          	ld	a5,32(a4)
    80002f8c:	00178793          	addi	a5,a5,1
    80002f90:	02f73023          	sd	a5,32(a4)
    char ch;
    ch = getCharacterInput();
    80002f94:	00000097          	auipc	ra,0x0
    80002f98:	e40080e7          	jalr	-448(ra) # 80002dd4 <_ZN8KConsole17getCharacterInputEv>
    80002f9c:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    80002fa0:	01b00793          	li	a5,27
    80002fa4:	02f51663          	bne	a0,a5,80002fd0 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    80002fa8:	00d00793          	li	a5,13
    80002fac:	02f48863          	beq	s1,a5,80002fdc <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80002fb0:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    80002fb4:	00001097          	auipc	ra,0x1
    80002fb8:	c18080e7          	jalr	-1000(ra) # 80003bcc <_ZN5Riscv13w_a0_sscratchEv>
}
    80002fbc:	01813083          	ld	ra,24(sp)
    80002fc0:	01013403          	ld	s0,16(sp)
    80002fc4:	00813483          	ld	s1,8(sp)
    80002fc8:	02010113          	addi	sp,sp,32
    80002fcc:	00008067          	ret
        putCharacterOutput(ch);
    80002fd0:	00000097          	auipc	ra,0x0
    80002fd4:	e7c080e7          	jalr	-388(ra) # 80002e4c <_ZN8KConsole18putCharacterOutputEc>
    80002fd8:	fd1ff06f          	j	80002fa8 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    80002fdc:	00d00513          	li	a0,13
    80002fe0:	00000097          	auipc	ra,0x0
    80002fe4:	e6c080e7          	jalr	-404(ra) # 80002e4c <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    80002fe8:	00a00513          	li	a0,10
    80002fec:	00000097          	auipc	ra,0x0
    80002ff0:	e60080e7          	jalr	-416(ra) # 80002e4c <_ZN8KConsole18putCharacterOutputEc>
    80002ff4:	fbdff06f          	j	80002fb0 <_ZN8KConsole11getcHandlerEv+0x44>

0000000080002ff8 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    80002ff8:	ff010113          	addi	sp,sp,-16
    80002ffc:	00813423          	sd	s0,8(sp)
    80003000:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80003004:	00007517          	auipc	a0,0x7
    80003008:	51453503          	ld	a0,1300(a0) # 8000a518 <_ZN8KConsole11pendingPutcE>
    8000300c:	00153513          	seqz	a0,a0
    80003010:	00813403          	ld	s0,8(sp)
    80003014:	01010113          	addi	sp,sp,16
    80003018:	00008067          	ret

000000008000301c <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    8000301c:	fe010113          	addi	sp,sp,-32
    80003020:	00113c23          	sd	ra,24(sp)
    80003024:	00813823          	sd	s0,16(sp)
    80003028:	02010413          	addi	s0,sp,32
    8000302c:	0180006f          	j	80003044 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit();
    80003030:	fffff097          	auipc	ra,0xfffff
    80003034:	cf4080e7          	jalr	-780(ra) # 80001d24 <_Z11thread_exitv>
    80003038:	0340006f          	j	8000306c <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch();
    8000303c:	fffff097          	auipc	ra,0xfffff
    80003040:	cc8080e7          	jalr	-824(ra) # 80001d04 <_Z15thread_dispatchv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    80003044:	00007797          	auipc	a5,0x7
    80003048:	3fc7b783          	ld	a5,1020(a5) # 8000a440 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000304c:	0007c783          	lbu	a5,0(a5)
    80003050:	00078e63          	beqz	a5,8000306c <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80003054:	00000097          	auipc	ra,0x0
    80003058:	fa4080e7          	jalr	-92(ra) # 80002ff8 <_ZN8KConsole17outputBufferEmptyEv>
    8000305c:	00050863          	beqz	a0,8000306c <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80003060:	00007797          	auipc	a5,0x7
    80003064:	4a07b783          	ld	a5,1184(a5) # 8000a500 <_ZN8KConsole11pendingGetcE>
    80003068:	fc0784e3          	beqz	a5,80003030 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    8000306c:	00007797          	auipc	a5,0x7
    80003070:	37c7b783          	ld	a5,892(a5) # 8000a3e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003074:	0007b783          	ld	a5,0(a5)
    80003078:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    8000307c:	0207f793          	andi	a5,a5,32
    80003080:	fa078ee3          	beqz	a5,8000303c <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    80003084:	00007797          	auipc	a5,0x7
    80003088:	4947b783          	ld	a5,1172(a5) # 8000a518 <_ZN8KConsole11pendingPutcE>
    8000308c:	fa0788e3          	beqz	a5,8000303c <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80003090:	fffff097          	auipc	ra,0xfffff
    80003094:	e9c080e7          	jalr	-356(ra) # 80001f2c <_Z20sysCallGetCharOutputv>
    80003098:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    8000309c:	00007717          	auipc	a4,0x7
    800030a0:	44470713          	addi	a4,a4,1092 # 8000a4e0 <_ZN8KConsole18hasCharactersInputE>
    800030a4:	03873783          	ld	a5,56(a4)
    800030a8:	fff78793          	addi	a5,a5,-1
    800030ac:	02f73c23          	sd	a5,56(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    800030b0:	00007797          	auipc	a5,0x7
    800030b4:	3307b783          	ld	a5,816(a5) # 8000a3e0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800030b8:	0007b783          	ld	a5,0(a5)
    800030bc:	fef44703          	lbu	a4,-17(s0)
    800030c0:	00e78023          	sb	a4,0(a5)
    800030c4:	f81ff06f          	j	80003044 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

00000000800030c8 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    800030c8:	ff010113          	addi	sp,sp,-16
    800030cc:	00113423          	sd	ra,8(sp)
    800030d0:	00813023          	sd	s0,0(sp)
    800030d4:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    800030d8:	00000097          	auipc	ra,0x0
    800030dc:	dec080e7          	jalr	-532(ra) # 80002ec4 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    800030e0:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800030e4:	00001097          	auipc	ra,0x1
    800030e8:	ae8080e7          	jalr	-1304(ra) # 80003bcc <_ZN5Riscv13w_a0_sscratchEv>
}
    800030ec:	00813083          	ld	ra,8(sp)
    800030f0:	00013403          	ld	s0,0(sp)
    800030f4:	01010113          	addi	sp,sp,16
    800030f8:	00008067          	ret

00000000800030fc <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    800030fc:	fe010113          	addi	sp,sp,-32
    80003100:	00113c23          	sd	ra,24(sp)
    80003104:	00813823          	sd	s0,16(sp)
    80003108:	00913423          	sd	s1,8(sp)
    8000310c:	02010413          	addi	s0,sp,32
    80003110:	00050493          	mv	s1,a0
    while (*string != '\0')
    80003114:	0004c503          	lbu	a0,0(s1)
    80003118:	00050a63          	beqz	a0,8000312c <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    8000311c:	00000097          	auipc	ra,0x0
    80003120:	d30080e7          	jalr	-720(ra) # 80002e4c <_ZN8KConsole18putCharacterOutputEc>
        string++;
    80003124:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003128:	fedff06f          	j	80003114 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    8000312c:	01813083          	ld	ra,24(sp)
    80003130:	01013403          	ld	s0,16(sp)
    80003134:	00813483          	ld	s1,8(sp)
    80003138:	02010113          	addi	sp,sp,32
    8000313c:	00008067          	ret

0000000080003140 <_ZN8KConsole12trapPrintIntEiii>:

void KConsole::trapPrintInt(int xx, int base, int sgn)
{
    80003140:	fb010113          	addi	sp,sp,-80
    80003144:	04113423          	sd	ra,72(sp)
    80003148:	04813023          	sd	s0,64(sp)
    8000314c:	02913c23          	sd	s1,56(sp)
    80003150:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    80003154:	00005797          	auipc	a5,0x5
    80003158:	0ac78793          	addi	a5,a5,172 # 80008200 <CONSOLE_STATUS+0x1f0>
    8000315c:	0007b703          	ld	a4,0(a5)
    80003160:	fce43423          	sd	a4,-56(s0)
    80003164:	0087b703          	ld	a4,8(a5)
    80003168:	fce43823          	sd	a4,-48(s0)
    8000316c:	0107c783          	lbu	a5,16(a5)
    80003170:	fcf40c23          	sb	a5,-40(s0)
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0) {
    80003174:	00060463          	beqz	a2,8000317c <_ZN8KConsole12trapPrintIntEiii+0x3c>
    80003178:	08054263          	bltz	a0,800031fc <_ZN8KConsole12trapPrintIntEiii+0xbc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000317c:	0005051b          	sext.w	a0,a0
    neg = 0;
    80003180:	00000813          	li	a6,0
    }

    i = 0;
    80003184:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80003188:	0005871b          	sext.w	a4,a1
    8000318c:	02b577bb          	remuw	a5,a0,a1
    80003190:	00048693          	mv	a3,s1
    80003194:	0014849b          	addiw	s1,s1,1
    80003198:	02079793          	slli	a5,a5,0x20
    8000319c:	0207d793          	srli	a5,a5,0x20
    800031a0:	fe040613          	addi	a2,s0,-32
    800031a4:	00f607b3          	add	a5,a2,a5
    800031a8:	fe87c603          	lbu	a2,-24(a5)
    800031ac:	fe040793          	addi	a5,s0,-32
    800031b0:	00d787b3          	add	a5,a5,a3
    800031b4:	fcc78c23          	sb	a2,-40(a5)
    }while((x /= base) != 0);
    800031b8:	0005061b          	sext.w	a2,a0
    800031bc:	02b5553b          	divuw	a0,a0,a1
    800031c0:	fce674e3          	bgeu	a2,a4,80003188 <_ZN8KConsole12trapPrintIntEiii+0x48>
    if(neg)
    800031c4:	00080c63          	beqz	a6,800031dc <_ZN8KConsole12trapPrintIntEiii+0x9c>
        buf[i++] = '-';
    800031c8:	fe040793          	addi	a5,s0,-32
    800031cc:	009784b3          	add	s1,a5,s1
    800031d0:	02d00793          	li	a5,45
    800031d4:	fcf48c23          	sb	a5,-40(s1)
    800031d8:	0026849b          	addiw	s1,a3,2

    while(--i >= 0)
    800031dc:	fff4849b          	addiw	s1,s1,-1
    800031e0:	0204c463          	bltz	s1,80003208 <_ZN8KConsole12trapPrintIntEiii+0xc8>
        KConsole::putCharacterOutput(buf[i]);
    800031e4:	fe040793          	addi	a5,s0,-32
    800031e8:	009787b3          	add	a5,a5,s1
    800031ec:	fd87c503          	lbu	a0,-40(a5)
    800031f0:	00000097          	auipc	ra,0x0
    800031f4:	c5c080e7          	jalr	-932(ra) # 80002e4c <_ZN8KConsole18putCharacterOutputEc>
    800031f8:	fe5ff06f          	j	800031dc <_ZN8KConsole12trapPrintIntEiii+0x9c>
        x = -xx;
    800031fc:	40a0053b          	negw	a0,a0
        neg = 1;
    80003200:	00100813          	li	a6,1
        x = -xx;
    80003204:	f81ff06f          	j	80003184 <_ZN8KConsole12trapPrintIntEiii+0x44>
}
    80003208:	04813083          	ld	ra,72(sp)
    8000320c:	04013403          	ld	s0,64(sp)
    80003210:	03813483          	ld	s1,56(sp)
    80003214:	05010113          	addi	sp,sp,80
    80003218:	00008067          	ret

000000008000321c <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    8000321c:	ff010113          	addi	sp,sp,-16
    80003220:	00813423          	sd	s0,8(sp)
    80003224:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80003228:	00007797          	auipc	a5,0x7
    8000322c:	2207b783          	ld	a5,544(a5) # 8000a448 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003230:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003234:	00500793          	li	a5,5
    80003238:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    8000323c:	0000b797          	auipc	a5,0xb
    80003240:	2e47b783          	ld	a5,740(a5) # 8000e520 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80003244:	00000593          	li	a1,0
    while(curr != 0)
    80003248:	02078063          	beqz	a5,80003268 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    8000324c:	02063683          	ld	a3,32(a2)
    80003250:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80003254:	00e6e863          	bltu	a3,a4,80003264 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80003258:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    8000325c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003260:	fe9ff06f          	j	80003248 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80003264:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80003268:	00058a63          	beqz	a1,8000327c <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    8000326c:	00c5b423          	sd	a2,8(a1)
}
    80003270:	00813403          	ld	s0,8(sp)
    80003274:	01010113          	addi	sp,sp,16
    80003278:	00008067          	ret
        sleepingPCBHead = PCB::running;
    8000327c:	0000b797          	auipc	a5,0xb
    80003280:	2ac7b223          	sd	a2,676(a5) # 8000e520 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003284:	fedff06f          	j	80003270 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

0000000080003288 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    80003288:	0000b517          	auipc	a0,0xb
    8000328c:	29853503          	ld	a0,664(a0) # 8000e520 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80003290:	06050e63          	beqz	a0,8000330c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003294:	06050c63          	beqz	a0,8000330c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80003298:	02053783          	ld	a5,32(a0)
    8000329c:	00007717          	auipc	a4,0x7
    800032a0:	18473703          	ld	a4,388(a4) # 8000a420 <_GLOBAL_OFFSET_TABLE_+0x48>
    800032a4:	00073703          	ld	a4,0(a4)
    800032a8:	06f76263          	bltu	a4,a5,8000330c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    800032ac:	fe010113          	addi	sp,sp,-32
    800032b0:	00113c23          	sd	ra,24(sp)
    800032b4:	00813823          	sd	s0,16(sp)
    800032b8:	00913423          	sd	s1,8(sp)
    800032bc:	02010413          	addi	s0,sp,32
    800032c0:	0180006f          	j	800032d8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    800032c4:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800032c8:	00007717          	auipc	a4,0x7
    800032cc:	15873703          	ld	a4,344(a4) # 8000a420 <_GLOBAL_OFFSET_TABLE_+0x48>
    800032d0:	00073703          	ld	a4,0(a4)
    800032d4:	02f76263          	bltu	a4,a5,800032f8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    800032d8:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    800032dc:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    800032e0:	00000097          	auipc	ra,0x0
    800032e4:	0b8080e7          	jalr	184(ra) # 80003398 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    800032e8:	0000b797          	auipc	a5,0xb
    800032ec:	2297bc23          	sd	s1,568(a5) # 8000e520 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    800032f0:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800032f4:	fc0498e3          	bnez	s1,800032c4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    800032f8:	01813083          	ld	ra,24(sp)
    800032fc:	01013403          	ld	s0,16(sp)
    80003300:	00813483          	ld	s1,8(sp)
    80003304:	02010113          	addi	sp,sp,32
    80003308:	00008067          	ret
    8000330c:	00008067          	ret

0000000080003310 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    80003310:	ff010113          	addi	sp,sp,-16
    80003314:	00113423          	sd	ra,8(sp)
    80003318:	00813023          	sd	s0,0(sp)
    8000331c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80003320:	00001097          	auipc	ra,0x1
    80003324:	01c080e7          	jalr	28(ra) # 8000433c <_ZN15MemoryAllocator7kmallocEm>
}
    80003328:	00813083          	ld	ra,8(sp)
    8000332c:	00013403          	ld	s0,0(sp)
    80003330:	01010113          	addi	sp,sp,16
    80003334:	00008067          	ret

0000000080003338 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80003338:	ff010113          	addi	sp,sp,-16
    8000333c:	00113423          	sd	ra,8(sp)
    80003340:	00813023          	sd	s0,0(sp)
    80003344:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80003348:	00001097          	auipc	ra,0x1
    8000334c:	058080e7          	jalr	88(ra) # 800043a0 <_ZN15MemoryAllocator5kfreeEPv>
}
    80003350:	00813083          	ld	ra,8(sp)
    80003354:	00013403          	ld	s0,0(sp)
    80003358:	01010113          	addi	sp,sp,16
    8000335c:	00008067          	ret

0000000080003360 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003360:	ff010113          	addi	sp,sp,-16
    80003364:	00813423          	sd	s0,8(sp)
    80003368:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    8000336c:	0000b797          	auipc	a5,0xb
    80003370:	1bc7b783          	ld	a5,444(a5) # 8000e528 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003374:	00000513          	li	a0,0
    while(curr != 0)
    80003378:	00078863          	beqz	a5,80003388 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    8000337c:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003380:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003384:	ff5ff06f          	j	80003378 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003388:	0005051b          	sext.w	a0,a0
    8000338c:	00813403          	ld	s0,8(sp)
    80003390:	01010113          	addi	sp,sp,16
    80003394:	00008067          	ret

0000000080003398 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003398:	ff010113          	addi	sp,sp,-16
    8000339c:	00813423          	sd	s0,8(sp)
    800033a0:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    800033a4:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    800033a8:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    800033ac:	0000b797          	auipc	a5,0xb
    800033b0:	17c7b783          	ld	a5,380(a5) # 8000e528 <_ZN9Scheduler16schedulerPCBHeadE>
    800033b4:	02078263          	beqz	a5,800033d8 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    800033b8:	0000b797          	auipc	a5,0xb
    800033bc:	17078793          	addi	a5,a5,368 # 8000e528 <_ZN9Scheduler16schedulerPCBHeadE>
    800033c0:	0087b703          	ld	a4,8(a5)
    800033c4:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    800033c8:	00a7b423          	sd	a0,8(a5)
    }
}
    800033cc:	00813403          	ld	s0,8(sp)
    800033d0:	01010113          	addi	sp,sp,16
    800033d4:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    800033d8:	0000b797          	auipc	a5,0xb
    800033dc:	15078793          	addi	a5,a5,336 # 8000e528 <_ZN9Scheduler16schedulerPCBHeadE>
    800033e0:	00a7b423          	sd	a0,8(a5)
    800033e4:	00a7b023          	sd	a0,0(a5)
    800033e8:	fe5ff06f          	j	800033cc <_ZN9Scheduler3putEP3PCB+0x34>

00000000800033ec <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    800033ec:	ff010113          	addi	sp,sp,-16
    800033f0:	00813423          	sd	s0,8(sp)
    800033f4:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800033f8:	0000b517          	auipc	a0,0xb
    800033fc:	13053503          	ld	a0,304(a0) # 8000e528 <_ZN9Scheduler16schedulerPCBHeadE>
    80003400:	00050c63          	beqz	a0,80003418 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003404:	00853783          	ld	a5,8(a0)
    80003408:	00078e63          	beqz	a5,80003424 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    8000340c:	0000b717          	auipc	a4,0xb
    80003410:	10f73e23          	sd	a5,284(a4) # 8000e528 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003414:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003418:	00813403          	ld	s0,8(sp)
    8000341c:	01010113          	addi	sp,sp,16
    80003420:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003424:	0000b797          	auipc	a5,0xb
    80003428:	10478793          	addi	a5,a5,260 # 8000e528 <_ZN9Scheduler16schedulerPCBHeadE>
    8000342c:	0007b423          	sd	zero,8(a5)
    80003430:	0007b023          	sd	zero,0(a5)
    80003434:	fe1ff06f          	j	80003414 <_ZN9Scheduler3getEv+0x28>

0000000080003438 <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    80003438:	fe010113          	addi	sp,sp,-32
    8000343c:	00113c23          	sd	ra,24(sp)
    80003440:	00813823          	sd	s0,16(sp)
    80003444:	00913423          	sd	s1,8(sp)
    80003448:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    8000344c:	0000b497          	auipc	s1,0xb
    80003450:	0dc4b483          	ld	s1,220(s1) # 8000e528 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003454:	02048863          	beqz	s1,80003484 <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    80003458:	00000613          	li	a2,0
    8000345c:	01000593          	li	a1,16
    80003460:	0004851b          	sext.w	a0,s1
    80003464:	00000097          	auipc	ra,0x0
    80003468:	cdc080e7          	jalr	-804(ra) # 80003140 <_ZN8KConsole12trapPrintIntEiii>
        KConsole::trapPrintString("\n");
    8000346c:	00005517          	auipc	a0,0x5
    80003470:	0dc50513          	addi	a0,a0,220 # 80008548 <CONSOLE_STATUS+0x538>
    80003474:	00000097          	auipc	ra,0x0
    80003478:	c88080e7          	jalr	-888(ra) # 800030fc <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    8000347c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003480:	fd5ff06f          	j	80003454 <_ZN9Scheduler5printEv+0x1c>
    }
}
    80003484:	01813083          	ld	ra,24(sp)
    80003488:	01013403          	ld	s0,16(sp)
    8000348c:	00813483          	ld	s1,8(sp)
    80003490:	02010113          	addi	sp,sp,32
    80003494:	00008067          	ret

0000000080003498 <main>:
#include "../h/Riscv.hpp"

void main()
{
    80003498:	ff010113          	addi	sp,sp,-16
    8000349c:	00113423          	sd	ra,8(sp)
    800034a0:	00813023          	sd	s0,0(sp)
    800034a4:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    800034a8:	00000097          	auipc	ra,0x0
    800034ac:	664080e7          	jalr	1636(ra) # 80003b0c <_ZN5Riscv10kernelMainEv>
    800034b0:	00813083          	ld	ra,8(sp)
    800034b4:	00013403          	ld	s0,0(sp)
    800034b8:	01010113          	addi	sp,sp,16
    800034bc:	00008067          	ret

00000000800034c0 <_ZN6Thread6runnerEPv>:
    myHandle = 0;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    800034c0:	ff010113          	addi	sp,sp,-16
    800034c4:	00113423          	sd	ra,8(sp)
    800034c8:	00813023          	sd	s0,0(sp)
    800034cc:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    800034d0:	00053783          	ld	a5,0(a0)
    800034d4:	0107b783          	ld	a5,16(a5)
    800034d8:	000780e7          	jalr	a5
}
    800034dc:	00813083          	ld	ra,8(sp)
    800034e0:	00013403          	ld	s0,0(sp)
    800034e4:	01010113          	addi	sp,sp,16
    800034e8:	00008067          	ret

00000000800034ec <_ZN6ThreadD1Ev>:

Thread::~Thread()
    800034ec:	00007797          	auipc	a5,0x7
    800034f0:	e9c78793          	addi	a5,a5,-356 # 8000a388 <_ZTV6Thread+0x10>
    800034f4:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    800034f8:	00853503          	ld	a0,8(a0)
    800034fc:	02050663          	beqz	a0,80003528 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    80003500:	ff010113          	addi	sp,sp,-16
    80003504:	00113423          	sd	ra,8(sp)
    80003508:	00813023          	sd	s0,0(sp)
    8000350c:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003510:	fffff097          	auipc	ra,0xfffff
    80003514:	a70080e7          	jalr	-1424(ra) # 80001f80 <_ZN7_threaddlEPv>
}
    80003518:	00813083          	ld	ra,8(sp)
    8000351c:	00013403          	ld	s0,0(sp)
    80003520:	01010113          	addi	sp,sp,16
    80003524:	00008067          	ret
    80003528:	00008067          	ret

000000008000352c <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    8000352c:	00007797          	auipc	a5,0x7
    80003530:	e8478793          	addi	a5,a5,-380 # 8000a3b0 <_ZTV9Semaphore+0x10>
    80003534:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80003538:	00853503          	ld	a0,8(a0)
    8000353c:	02050663          	beqz	a0,80003568 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80003540:	ff010113          	addi	sp,sp,-16
    80003544:	00113423          	sd	ra,8(sp)
    80003548:	00813023          	sd	s0,0(sp)
    8000354c:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003550:	00000097          	auipc	ra,0x0
    80003554:	464080e7          	jalr	1124(ra) # 800039b4 <_ZN4_semdlEPv>
}
    80003558:	00813083          	ld	ra,8(sp)
    8000355c:	00013403          	ld	s0,0(sp)
    80003560:	01010113          	addi	sp,sp,16
    80003564:	00008067          	ret
    80003568:	00008067          	ret

000000008000356c <_Znwm>:
{
    8000356c:	ff010113          	addi	sp,sp,-16
    80003570:	00113423          	sd	ra,8(sp)
    80003574:	00813023          	sd	s0,0(sp)
    80003578:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000357c:	ffffe097          	auipc	ra,0xffffe
    80003580:	6ac080e7          	jalr	1708(ra) # 80001c28 <_Z9mem_allocm>
}
    80003584:	00813083          	ld	ra,8(sp)
    80003588:	00013403          	ld	s0,0(sp)
    8000358c:	01010113          	addi	sp,sp,16
    80003590:	00008067          	ret

0000000080003594 <_ZdlPv>:
{
    80003594:	ff010113          	addi	sp,sp,-16
    80003598:	00113423          	sd	ra,8(sp)
    8000359c:	00813023          	sd	s0,0(sp)
    800035a0:	01010413          	addi	s0,sp,16
    mem_free(p);
    800035a4:	ffffe097          	auipc	ra,0xffffe
    800035a8:	6b4080e7          	jalr	1716(ra) # 80001c58 <_Z8mem_freePv>
}
    800035ac:	00813083          	ld	ra,8(sp)
    800035b0:	00013403          	ld	s0,0(sp)
    800035b4:	01010113          	addi	sp,sp,16
    800035b8:	00008067          	ret

00000000800035bc <_ZN6ThreadD0Ev>:
Thread::~Thread()
    800035bc:	fe010113          	addi	sp,sp,-32
    800035c0:	00113c23          	sd	ra,24(sp)
    800035c4:	00813823          	sd	s0,16(sp)
    800035c8:	00913423          	sd	s1,8(sp)
    800035cc:	02010413          	addi	s0,sp,32
    800035d0:	00050493          	mv	s1,a0
}
    800035d4:	00000097          	auipc	ra,0x0
    800035d8:	f18080e7          	jalr	-232(ra) # 800034ec <_ZN6ThreadD1Ev>
    800035dc:	00048513          	mv	a0,s1
    800035e0:	00000097          	auipc	ra,0x0
    800035e4:	fb4080e7          	jalr	-76(ra) # 80003594 <_ZdlPv>
    800035e8:	01813083          	ld	ra,24(sp)
    800035ec:	01013403          	ld	s0,16(sp)
    800035f0:	00813483          	ld	s1,8(sp)
    800035f4:	02010113          	addi	sp,sp,32
    800035f8:	00008067          	ret

00000000800035fc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800035fc:	fe010113          	addi	sp,sp,-32
    80003600:	00113c23          	sd	ra,24(sp)
    80003604:	00813823          	sd	s0,16(sp)
    80003608:	00913423          	sd	s1,8(sp)
    8000360c:	02010413          	addi	s0,sp,32
    80003610:	00050493          	mv	s1,a0
}
    80003614:	00000097          	auipc	ra,0x0
    80003618:	f18080e7          	jalr	-232(ra) # 8000352c <_ZN9SemaphoreD1Ev>
    8000361c:	00048513          	mv	a0,s1
    80003620:	00000097          	auipc	ra,0x0
    80003624:	f74080e7          	jalr	-140(ra) # 80003594 <_ZdlPv>
    80003628:	01813083          	ld	ra,24(sp)
    8000362c:	01013403          	ld	s0,16(sp)
    80003630:	00813483          	ld	s1,8(sp)
    80003634:	02010113          	addi	sp,sp,32
    80003638:	00008067          	ret

000000008000363c <_ZN6Thread5startEv>:
    if(myHandle != 0)
    8000363c:	00853503          	ld	a0,8(a0)
    80003640:	02050663          	beqz	a0,8000366c <_ZN6Thread5startEv+0x30>
{
    80003644:	ff010113          	addi	sp,sp,-16
    80003648:	00113423          	sd	ra,8(sp)
    8000364c:	00813023          	sd	s0,0(sp)
    80003650:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80003654:	ffffe097          	auipc	ra,0xffffe
    80003658:	7e0080e7          	jalr	2016(ra) # 80001e34 <_Z12thread_startPv>
}
    8000365c:	00813083          	ld	ra,8(sp)
    80003660:	00013403          	ld	s0,0(sp)
    80003664:	01010113          	addi	sp,sp,16
    80003668:	00008067          	ret
        return -1;
    8000366c:	fff00513          	li	a0,-1
}
    80003670:	00008067          	ret

0000000080003674 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003674:	ff010113          	addi	sp,sp,-16
    80003678:	00113423          	sd	ra,8(sp)
    8000367c:	00813023          	sd	s0,0(sp)
    80003680:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003684:	ffffe097          	auipc	ra,0xffffe
    80003688:	680080e7          	jalr	1664(ra) # 80001d04 <_Z15thread_dispatchv>
}
    8000368c:	00813083          	ld	ra,8(sp)
    80003690:	00013403          	ld	s0,0(sp)
    80003694:	01010113          	addi	sp,sp,16
    80003698:	00008067          	ret

000000008000369c <_ZN6Thread5sleepEm>:
{
    8000369c:	ff010113          	addi	sp,sp,-16
    800036a0:	00113423          	sd	ra,8(sp)
    800036a4:	00813023          	sd	s0,0(sp)
    800036a8:	01010413          	addi	s0,sp,16
    time_sleep(time);
    800036ac:	ffffe097          	auipc	ra,0xffffe
    800036b0:	75c080e7          	jalr	1884(ra) # 80001e08 <_Z10time_sleepm>
}
    800036b4:	00813083          	ld	ra,8(sp)
    800036b8:	00013403          	ld	s0,0(sp)
    800036bc:	01010113          	addi	sp,sp,16
    800036c0:	00008067          	ret

00000000800036c4 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    800036c4:	fe010113          	addi	sp,sp,-32
    800036c8:	00113c23          	sd	ra,24(sp)
    800036cc:	00813823          	sd	s0,16(sp)
    800036d0:	00913423          	sd	s1,8(sp)
    800036d4:	01213023          	sd	s2,0(sp)
    800036d8:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    800036dc:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    800036e0:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    800036e4:	0004b783          	ld	a5,0(s1)
    800036e8:	0187b783          	ld	a5,24(a5)
    800036ec:	00048513          	mv	a0,s1
    800036f0:	000780e7          	jalr	a5
        Thread::sleep(time);
    800036f4:	00090513          	mv	a0,s2
    800036f8:	00000097          	auipc	ra,0x0
    800036fc:	fa4080e7          	jalr	-92(ra) # 8000369c <_ZN6Thread5sleepEm>
    while(true)
    80003700:	fe5ff06f          	j	800036e4 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080003704 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80003704:	ff010113          	addi	sp,sp,-16
    80003708:	00113423          	sd	ra,8(sp)
    8000370c:	00813023          	sd	s0,0(sp)
    80003710:	01010413          	addi	s0,sp,16
    80003714:	00007797          	auipc	a5,0x7
    80003718:	c7478793          	addi	a5,a5,-908 # 8000a388 <_ZTV6Thread+0x10>
    8000371c:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80003720:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    80003724:	00850513          	addi	a0,a0,8
    80003728:	ffffe097          	auipc	ra,0xffffe
    8000372c:	738080e7          	jalr	1848(ra) # 80001e60 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80003730:	00813083          	ld	ra,8(sp)
    80003734:	00013403          	ld	s0,0(sp)
    80003738:	01010113          	addi	sp,sp,16
    8000373c:	00008067          	ret

0000000080003740 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80003740:	ff010113          	addi	sp,sp,-16
    80003744:	00113423          	sd	ra,8(sp)
    80003748:	00813023          	sd	s0,0(sp)
    8000374c:	01010413          	addi	s0,sp,16
    80003750:	00007797          	auipc	a5,0x7
    80003754:	c3878793          	addi	a5,a5,-968 # 8000a388 <_ZTV6Thread+0x10>
    80003758:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    8000375c:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80003760:	00050613          	mv	a2,a0
    80003764:	00000597          	auipc	a1,0x0
    80003768:	d5c58593          	addi	a1,a1,-676 # 800034c0 <_ZN6Thread6runnerEPv>
    8000376c:	00850513          	addi	a0,a0,8
    80003770:	ffffe097          	auipc	ra,0xffffe
    80003774:	6f0080e7          	jalr	1776(ra) # 80001e60 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80003778:	00813083          	ld	ra,8(sp)
    8000377c:	00013403          	ld	s0,0(sp)
    80003780:	01010113          	addi	sp,sp,16
    80003784:	00008067          	ret

0000000080003788 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003788:	00853503          	ld	a0,8(a0)
    8000378c:	02050663          	beqz	a0,800037b8 <_ZN9Semaphore4waitEv+0x30>
{
    80003790:	ff010113          	addi	sp,sp,-16
    80003794:	00113423          	sd	ra,8(sp)
    80003798:	00813023          	sd	s0,0(sp)
    8000379c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800037a0:	ffffe097          	auipc	ra,0xffffe
    800037a4:	610080e7          	jalr	1552(ra) # 80001db0 <_Z8sem_waitP4_sem>
}
    800037a8:	00813083          	ld	ra,8(sp)
    800037ac:	00013403          	ld	s0,0(sp)
    800037b0:	01010113          	addi	sp,sp,16
    800037b4:	00008067          	ret
        return -1;
    800037b8:	fff00513          	li	a0,-1
}
    800037bc:	00008067          	ret

00000000800037c0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    800037c0:	fe010113          	addi	sp,sp,-32
    800037c4:	00113c23          	sd	ra,24(sp)
    800037c8:	00813823          	sd	s0,16(sp)
    800037cc:	00913423          	sd	s1,8(sp)
    800037d0:	02010413          	addi	s0,sp,32
    800037d4:	00050493          	mv	s1,a0
    800037d8:	00007797          	auipc	a5,0x7
    800037dc:	bd878793          	addi	a5,a5,-1064 # 8000a3b0 <_ZTV9Semaphore+0x10>
    800037e0:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    800037e4:	00850513          	addi	a0,a0,8
    800037e8:	ffffe097          	auipc	ra,0xffffe
    800037ec:	564080e7          	jalr	1380(ra) # 80001d4c <_Z8sem_openPP4_semj>
    if(retval != 0)
    800037f0:	00050463          	beqz	a0,800037f8 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    800037f4:	0004b423          	sd	zero,8(s1)
}
    800037f8:	01813083          	ld	ra,24(sp)
    800037fc:	01013403          	ld	s0,16(sp)
    80003800:	00813483          	ld	s1,8(sp)
    80003804:	02010113          	addi	sp,sp,32
    80003808:	00008067          	ret

000000008000380c <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    8000380c:	00853503          	ld	a0,8(a0)
    80003810:	02050663          	beqz	a0,8000383c <_ZN9Semaphore6signalEv+0x30>
{
    80003814:	ff010113          	addi	sp,sp,-16
    80003818:	00113423          	sd	ra,8(sp)
    8000381c:	00813023          	sd	s0,0(sp)
    80003820:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003824:	ffffe097          	auipc	ra,0xffffe
    80003828:	5b8080e7          	jalr	1464(ra) # 80001ddc <_Z10sem_signalP4_sem>
}
    8000382c:	00813083          	ld	ra,8(sp)
    80003830:	00013403          	ld	s0,0(sp)
    80003834:	01010113          	addi	sp,sp,16
    80003838:	00008067          	ret
        return -1;
    8000383c:	fff00513          	li	a0,-1
}
    80003840:	00008067          	ret

0000000080003844 <_ZN7Console4getcEv>:
{
    80003844:	ff010113          	addi	sp,sp,-16
    80003848:	00113423          	sd	ra,8(sp)
    8000384c:	00813023          	sd	s0,0(sp)
    80003850:	01010413          	addi	s0,sp,16
    return ::getc();
    80003854:	ffffe097          	auipc	ra,0xffffe
    80003858:	68c080e7          	jalr	1676(ra) # 80001ee0 <_Z4getcv>
}
    8000385c:	00813083          	ld	ra,8(sp)
    80003860:	00013403          	ld	s0,0(sp)
    80003864:	01010113          	addi	sp,sp,16
    80003868:	00008067          	ret

000000008000386c <_ZN7Console4putcEc>:
{
    8000386c:	ff010113          	addi	sp,sp,-16
    80003870:	00113423          	sd	ra,8(sp)
    80003874:	00813023          	sd	s0,0(sp)
    80003878:	01010413          	addi	s0,sp,16
    return ::putc(c);
    8000387c:	ffffe097          	auipc	ra,0xffffe
    80003880:	68c080e7          	jalr	1676(ra) # 80001f08 <_Z4putcc>
}
    80003884:	00813083          	ld	ra,8(sp)
    80003888:	00013403          	ld	s0,0(sp)
    8000388c:	01010113          	addi	sp,sp,16
    80003890:	00008067          	ret

0000000080003894 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003894:	fe010113          	addi	sp,sp,-32
    80003898:	00113c23          	sd	ra,24(sp)
    8000389c:	00813823          	sd	s0,16(sp)
    800038a0:	00913423          	sd	s1,8(sp)
    800038a4:	01213023          	sd	s2,0(sp)
    800038a8:	02010413          	addi	s0,sp,32
    800038ac:	00050493          	mv	s1,a0
    800038b0:	00058913          	mv	s2,a1
    800038b4:	01000513          	li	a0,16
    800038b8:	00000097          	auipc	ra,0x0
    800038bc:	cb4080e7          	jalr	-844(ra) # 8000356c <_Znwm>
    800038c0:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    800038c4:	00953023          	sd	s1,0(a0)
    800038c8:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800038cc:	00000597          	auipc	a1,0x0
    800038d0:	df858593          	addi	a1,a1,-520 # 800036c4 <_ZN14PeriodicThread6runnerEPv>
    800038d4:	00048513          	mv	a0,s1
    800038d8:	00000097          	auipc	ra,0x0
    800038dc:	e2c080e7          	jalr	-468(ra) # 80003704 <_ZN6ThreadC1EPFvPvES0_>
    800038e0:	00007797          	auipc	a5,0x7
    800038e4:	a7878793          	addi	a5,a5,-1416 # 8000a358 <_ZTV14PeriodicThread+0x10>
    800038e8:	00f4b023          	sd	a5,0(s1)
}
    800038ec:	01813083          	ld	ra,24(sp)
    800038f0:	01013403          	ld	s0,16(sp)
    800038f4:	00813483          	ld	s1,8(sp)
    800038f8:	00013903          	ld	s2,0(sp)
    800038fc:	02010113          	addi	sp,sp,32
    80003900:	00008067          	ret

0000000080003904 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80003904:	ff010113          	addi	sp,sp,-16
    80003908:	00813423          	sd	s0,8(sp)
    8000390c:	01010413          	addi	s0,sp,16
    80003910:	00813403          	ld	s0,8(sp)
    80003914:	01010113          	addi	sp,sp,16
    80003918:	00008067          	ret

000000008000391c <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    8000391c:	ff010113          	addi	sp,sp,-16
    80003920:	00813423          	sd	s0,8(sp)
    80003924:	01010413          	addi	s0,sp,16
    80003928:	00813403          	ld	s0,8(sp)
    8000392c:	01010113          	addi	sp,sp,16
    80003930:	00008067          	ret

0000000080003934 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80003934:	ff010113          	addi	sp,sp,-16
    80003938:	00113423          	sd	ra,8(sp)
    8000393c:	00813023          	sd	s0,0(sp)
    80003940:	01010413          	addi	s0,sp,16
    80003944:	00007797          	auipc	a5,0x7
    80003948:	a1478793          	addi	a5,a5,-1516 # 8000a358 <_ZTV14PeriodicThread+0x10>
    8000394c:	00f53023          	sd	a5,0(a0)
    80003950:	00000097          	auipc	ra,0x0
    80003954:	b9c080e7          	jalr	-1124(ra) # 800034ec <_ZN6ThreadD1Ev>
    80003958:	00813083          	ld	ra,8(sp)
    8000395c:	00013403          	ld	s0,0(sp)
    80003960:	01010113          	addi	sp,sp,16
    80003964:	00008067          	ret

0000000080003968 <_ZN14PeriodicThreadD0Ev>:
    80003968:	fe010113          	addi	sp,sp,-32
    8000396c:	00113c23          	sd	ra,24(sp)
    80003970:	00813823          	sd	s0,16(sp)
    80003974:	00913423          	sd	s1,8(sp)
    80003978:	02010413          	addi	s0,sp,32
    8000397c:	00050493          	mv	s1,a0
    80003980:	00007797          	auipc	a5,0x7
    80003984:	9d878793          	addi	a5,a5,-1576 # 8000a358 <_ZTV14PeriodicThread+0x10>
    80003988:	00f53023          	sd	a5,0(a0)
    8000398c:	00000097          	auipc	ra,0x0
    80003990:	b60080e7          	jalr	-1184(ra) # 800034ec <_ZN6ThreadD1Ev>
    80003994:	00048513          	mv	a0,s1
    80003998:	00000097          	auipc	ra,0x0
    8000399c:	bfc080e7          	jalr	-1028(ra) # 80003594 <_ZdlPv>
    800039a0:	01813083          	ld	ra,24(sp)
    800039a4:	01013403          	ld	s0,16(sp)
    800039a8:	00813483          	ld	s1,8(sp)
    800039ac:	02010113          	addi	sp,sp,32
    800039b0:	00008067          	ret

00000000800039b4 <_ZN4_semdlEPv>:
//

#include "../h/_sem.hpp"
#include "../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    800039b4:	ff010113          	addi	sp,sp,-16
    800039b8:	00113423          	sd	ra,8(sp)
    800039bc:	00813023          	sd	s0,0(sp)
    800039c0:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    800039c4:	ffffe097          	auipc	ra,0xffffe
    800039c8:	3c0080e7          	jalr	960(ra) # 80001d84 <_Z9sem_closeP4_sem>
}
    800039cc:	00813083          	ld	ra,8(sp)
    800039d0:	00013403          	ld	s0,0(sp)
    800039d4:	01010113          	addi	sp,sp,16
    800039d8:	00008067          	ret

00000000800039dc <_ZN5Riscv10initSystemEv>:
uint64 Riscv::totalTime = 0;
bool Riscv::finishSystem = false;
bool Riscv::kernelMainCalled = false;

void Riscv::initSystem()
{
    800039dc:	ff010113          	addi	sp,sp,-16
    800039e0:	00113423          	sd	ra,8(sp)
    800039e4:	00813023          	sd	s0,0(sp)
    800039e8:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    800039ec:	00007797          	auipc	a5,0x7
    800039f0:	a0c7b783          	ld	a5,-1524(a5) # 8000a3f8 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    800039f4:	10579073          	csrw	stvec,a5
    PCB::initialize();
    800039f8:	ffffe097          	auipc	ra,0xffffe
    800039fc:	774080e7          	jalr	1908(ra) # 8000216c <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003a00:	fffff097          	auipc	ra,0xfffff
    80003a04:	250080e7          	jalr	592(ra) # 80002c50 <_ZN8KConsole10initializeEv>
}
    80003a08:	00813083          	ld	ra,8(sp)
    80003a0c:	00013403          	ld	s0,0(sp)
    80003a10:	01010113          	addi	sp,sp,16
    80003a14:	00008067          	ret

0000000080003a18 <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    80003a18:	ff010113          	addi	sp,sp,-16
    80003a1c:	00813423          	sd	s0,8(sp)
    80003a20:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003a24:	00200793          	li	a5,2
    80003a28:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80003a2c:	00813403          	ld	s0,8(sp)
    80003a30:	01010113          	addi	sp,sp,16
    80003a34:	00008067          	ret

0000000080003a38 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80003a38:	ff010113          	addi	sp,sp,-16
    80003a3c:	00813423          	sd	s0,8(sp)
    80003a40:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003a44:	00200793          	li	a5,2
    80003a48:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80003a4c:	00813403          	ld	s0,8(sp)
    80003a50:	01010113          	addi	sp,sp,16
    80003a54:	00008067          	ret

0000000080003a58 <_ZN5Riscv9endSystemEv>:
{
    80003a58:	ff010113          	addi	sp,sp,-16
    80003a5c:	00113423          	sd	ra,8(sp)
    80003a60:	00813023          	sd	s0,0(sp)
    80003a64:	01010413          	addi	s0,sp,16
    disableInterrupts();
    80003a68:	00000097          	auipc	ra,0x0
    80003a6c:	fd0080e7          	jalr	-48(ra) # 80003a38 <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    80003a70:	00100793          	li	a5,1
    80003a74:	0000b717          	auipc	a4,0xb
    80003a78:	acf70223          	sb	a5,-1340(a4) # 8000e538 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    80003a7c:	00000097          	auipc	ra,0x0
    80003a80:	970080e7          	jalr	-1680(ra) # 800033ec <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    80003a84:	fe051ce3          	bnez	a0,80003a7c <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    80003a88:	00007797          	auipc	a5,0x7
    80003a8c:	9a87b783          	ld	a5,-1624(a5) # 8000a430 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003a90:	0007b503          	ld	a0,0(a5)
    80003a94:	00000097          	auipc	ra,0x0
    80003a98:	904080e7          	jalr	-1788(ra) # 80003398 <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    80003a9c:	00007797          	auipc	a5,0x7
    80003aa0:	9647b783          	ld	a5,-1692(a5) # 8000a400 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003aa4:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    80003aa8:	00000097          	auipc	ra,0x0
    80003aac:	f70080e7          	jalr	-144(ra) # 80003a18 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    80003ab0:	00007797          	auipc	a5,0x7
    80003ab4:	9807b783          	ld	a5,-1664(a5) # 8000a430 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003ab8:	0007b503          	ld	a0,0(a5)
    80003abc:	ffffe097          	auipc	ra,0xffffe
    80003ac0:	7d0080e7          	jalr	2000(ra) # 8000228c <_ZN3PCB10isFinishedEv>
    80003ac4:	00051863          	bnez	a0,80003ad4 <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch();
    80003ac8:	ffffe097          	auipc	ra,0xffffe
    80003acc:	23c080e7          	jalr	572(ra) # 80001d04 <_Z15thread_dispatchv>
    while(!PCB::consolePCB->isFinished())
    80003ad0:	fe1ff06f          	j	80003ab0 <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    80003ad4:	00000097          	auipc	ra,0x0
    80003ad8:	f64080e7          	jalr	-156(ra) # 80003a38 <_ZN5Riscv17disableInterruptsEv>
}
    80003adc:	00813083          	ld	ra,8(sp)
    80003ae0:	00013403          	ld	s0,0(sp)
    80003ae4:	01010113          	addi	sp,sp,16
    80003ae8:	00008067          	ret

0000000080003aec <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80003aec:	ff010113          	addi	sp,sp,-16
    80003af0:	00813423          	sd	s0,8(sp)
    80003af4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003af8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80003afc:	10200073          	sret
}
    80003b00:	00813403          	ld	s0,8(sp)
    80003b04:	01010113          	addi	sp,sp,16
    80003b08:	00008067          	ret

0000000080003b0c <_ZN5Riscv10kernelMainEv>:
    }
}

void Riscv::kernelMain()
{
    if(kernelMainCalled) return;
    80003b0c:	0000b797          	auipc	a5,0xb
    80003b10:	a2d7c783          	lbu	a5,-1491(a5) # 8000e539 <_ZN5Riscv16kernelMainCalledE>
    80003b14:	00078463          	beqz	a5,80003b1c <_ZN5Riscv10kernelMainEv+0x10>
    80003b18:	00008067          	ret
{
    80003b1c:	ff010113          	addi	sp,sp,-16
    80003b20:	00113423          	sd	ra,8(sp)
    80003b24:	00813023          	sd	s0,0(sp)
    80003b28:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    80003b2c:	00100793          	li	a5,1
    80003b30:	0000b717          	auipc	a4,0xb
    80003b34:	a0f704a3          	sb	a5,-1527(a4) # 8000e539 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    80003b38:	00000097          	auipc	ra,0x0
    80003b3c:	ea4080e7          	jalr	-348(ra) # 800039dc <_ZN5Riscv10initSystemEv>

    //disableTimerInterrupts();
    enableInterrupts();
    80003b40:	00000097          	auipc	ra,0x0
    80003b44:	ed8080e7          	jalr	-296(ra) # 80003a18 <_ZN5Riscv16enableInterruptsEv>

    while(!PCB::userPCB->isFinished())
    80003b48:	00007797          	auipc	a5,0x7
    80003b4c:	8f07b783          	ld	a5,-1808(a5) # 8000a438 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003b50:	0007b503          	ld	a0,0(a5)
    80003b54:	ffffe097          	auipc	ra,0xffffe
    80003b58:	738080e7          	jalr	1848(ra) # 8000228c <_ZN3PCB10isFinishedEv>
    80003b5c:	00051863          	bnez	a0,80003b6c <_ZN5Riscv10kernelMainEv+0x60>
    {
        thread_dispatch();
    80003b60:	ffffe097          	auipc	ra,0xffffe
    80003b64:	1a4080e7          	jalr	420(ra) # 80001d04 <_Z15thread_dispatchv>
    while(!PCB::userPCB->isFinished())
    80003b68:	fe1ff06f          	j	80003b48 <_ZN5Riscv10kernelMainEv+0x3c>
    }

    //printString("End...\n");
    endSystem();
    80003b6c:	00000097          	auipc	ra,0x0
    80003b70:	eec080e7          	jalr	-276(ra) # 80003a58 <_ZN5Riscv9endSystemEv>
}
    80003b74:	00813083          	ld	ra,8(sp)
    80003b78:	00013403          	ld	s0,0(sp)
    80003b7c:	01010113          	addi	sp,sp,16
    80003b80:	00008067          	ret

0000000080003b84 <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    80003b84:	ff010113          	addi	sp,sp,-16
    80003b88:	00113423          	sd	ra,8(sp)
    80003b8c:	00813023          	sd	s0,0(sp)
    80003b90:	01010413          	addi	s0,sp,16
    userMain();
    80003b94:	00002097          	auipc	ra,0x2
    80003b98:	930080e7          	jalr	-1744(ra) # 800054c4 <_Z8userMainv>
}
    80003b9c:	00813083          	ld	ra,8(sp)
    80003ba0:	00013403          	ld	s0,0(sp)
    80003ba4:	01010113          	addi	sp,sp,16
    80003ba8:	00008067          	ret

0000000080003bac <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80003bac:	ff010113          	addi	sp,sp,-16
    80003bb0:	00813423          	sd	s0,8(sp)
    80003bb4:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80003bb8:	00200793          	li	a5,2
    80003bbc:	1047b073          	csrc	sie,a5
}
    80003bc0:	00813403          	ld	s0,8(sp)
    80003bc4:	01010113          	addi	sp,sp,16
    80003bc8:	00008067          	ret

0000000080003bcc <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    80003bcc:	ff010113          	addi	sp,sp,-16
    80003bd0:	00813423          	sd	s0,8(sp)
    80003bd4:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80003bd8:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80003bdc:	00007717          	auipc	a4,0x7
    80003be0:	86c73703          	ld	a4,-1940(a4) # 8000a448 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003be4:	00073703          	ld	a4,0(a4)
    80003be8:	01073703          	ld	a4,16(a4)
    80003bec:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80003bf0:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80003bf4:	00078593          	mv	a1,a5
}
    80003bf8:	00813403          	ld	s0,8(sp)
    80003bfc:	01010113          	addi	sp,sp,16
    80003c00:	00008067          	ret

0000000080003c04 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80003c04:	ff010113          	addi	sp,sp,-16
    80003c08:	00813423          	sd	s0,8(sp)
    80003c0c:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80003c10:	00007797          	auipc	a5,0x7
    80003c14:	8387b783          	ld	a5,-1992(a5) # 8000a448 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003c18:	0007b783          	ld	a5,0(a5)
    80003c1c:	0007c783          	lbu	a5,0(a5)
    80003c20:	00078c63          	beqz	a5,80003c38 <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003c24:	10000793          	li	a5,256
    80003c28:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80003c2c:	00813403          	ld	s0,8(sp)
    80003c30:	01010113          	addi	sp,sp,16
    80003c34:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003c38:	10000793          	li	a5,256
    80003c3c:	1007b073          	csrc	sstatus,a5
    80003c40:	fedff06f          	j	80003c2c <_ZN5Riscv14changePrivModeEv+0x28>

0000000080003c44 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80003c44:	f9010113          	addi	sp,sp,-112
    80003c48:	06113423          	sd	ra,104(sp)
    80003c4c:	06813023          	sd	s0,96(sp)
    80003c50:	04913c23          	sd	s1,88(sp)
    80003c54:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80003c58:	00070713          	mv	a4,a4
    80003c5c:	00007797          	auipc	a5,0x7
    80003c60:	8047b783          	ld	a5,-2044(a5) # 8000a460 <_GLOBAL_OFFSET_TABLE_+0x88>
    80003c64:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80003c68:	00006797          	auipc	a5,0x6
    80003c6c:	7e07b783          	ld	a5,2016(a5) # 8000a448 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003c70:	0007b783          	ld	a5,0(a5)
    80003c74:	14002773          	csrr	a4,sscratch
    80003c78:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003c7c:	142027f3          	csrr	a5,scause
    80003c80:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80003c84:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80003c88:	00900713          	li	a4,9
    80003c8c:	02f76e63          	bltu	a4,a5,80003cc8 <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    80003c90:	00800713          	li	a4,8
    80003c94:	12e7f463          	bgeu	a5,a4,80003dbc <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    80003c98:	00500713          	li	a4,5
    80003c9c:	10e78a63          	beq	a5,a4,80003db0 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    80003ca0:	00700713          	li	a4,7
    80003ca4:	00e79863          	bne	a5,a4,80003cb4 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    80003ca8:	ffffe097          	auipc	ra,0xffffe
    80003cac:	608080e7          	jalr	1544(ra) # 800022b0 <_ZN3PCB17threadExitHandlerEv>
            break;
    80003cb0:	0dc0006f          	j	80003d8c <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    80003cb4:	00200713          	li	a4,2
    80003cb8:	0ce79a63          	bne	a5,a4,80003d8c <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    80003cbc:	ffffe097          	auipc	ra,0xffffe
    80003cc0:	5f4080e7          	jalr	1524(ra) # 800022b0 <_ZN3PCB17threadExitHandlerEv>
            break;
    80003cc4:	0c80006f          	j	80003d8c <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    80003cc8:	fff00713          	li	a4,-1
    80003ccc:	03f71713          	slli	a4,a4,0x3f
    80003cd0:	00170713          	addi	a4,a4,1
    80003cd4:	02e78863          	beq	a5,a4,80003d04 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
    80003cd8:	fff00713          	li	a4,-1
    80003cdc:	03f71713          	slli	a4,a4,0x3f
    80003ce0:	00970713          	addi	a4,a4,9
    80003ce4:	0ae79463          	bne	a5,a4,80003d8c <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            KConsole::getCharactersFromConsole();
    80003ce8:	fffff097          	auipc	ra,0xfffff
    80003cec:	080080e7          	jalr	128(ra) # 80002d68 <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    80003cf0:	00002097          	auipc	ra,0x2
    80003cf4:	374080e7          	jalr	884(ra) # 80006064 <plic_claim>
    80003cf8:	00002097          	auipc	ra,0x2
    80003cfc:	3a4080e7          	jalr	932(ra) # 8000609c <plic_complete>
            break;
    80003d00:	08c0006f          	j	80003d8c <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003d04:	141027f3          	csrr	a5,sepc
    80003d08:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003d0c:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003d10:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003d14:	100027f3          	csrr	a5,sstatus
    80003d18:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003d1c:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003d20:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003d24:	00200793          	li	a5,2
    80003d28:	1447b073          	csrc	sip,a5
            totalTime++;
    80003d2c:	0000b717          	auipc	a4,0xb
    80003d30:	80c70713          	addi	a4,a4,-2036 # 8000e538 <_ZN5Riscv12finishSystemE>
    80003d34:	00873783          	ld	a5,8(a4)
    80003d38:	00178793          	addi	a5,a5,1
    80003d3c:	00f73423          	sd	a5,8(a4)
            PCB::timeSliceCounter++;
    80003d40:	00006497          	auipc	s1,0x6
    80003d44:	6d04b483          	ld	s1,1744(s1) # 8000a410 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003d48:	0004b783          	ld	a5,0(s1)
    80003d4c:	00178793          	addi	a5,a5,1
    80003d50:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003d54:	fffff097          	auipc	ra,0xfffff
    80003d58:	534080e7          	jalr	1332(ra) # 80003288 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003d5c:	00006797          	auipc	a5,0x6
    80003d60:	6ec7b783          	ld	a5,1772(a5) # 8000a448 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003d64:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003d68:	0187b783          	ld	a5,24(a5)
    80003d6c:	0004b703          	ld	a4,0(s1)
    80003d70:	02f77863          	bgeu	a4,a5,80003da0 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
            Riscv::w_sstatus(sstatus);
    80003d74:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003d78:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003d7c:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003d80:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003d84:	00000097          	auipc	ra,0x0
    80003d88:	e80080e7          	jalr	-384(ra) # 80003c04 <_ZN5Riscv14changePrivModeEv>
}
    80003d8c:	06813083          	ld	ra,104(sp)
    80003d90:	06013403          	ld	s0,96(sp)
    80003d94:	05813483          	ld	s1,88(sp)
    80003d98:	07010113          	addi	sp,sp,112
    80003d9c:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80003da0:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003da4:	ffffe097          	auipc	ra,0xffffe
    80003da8:	2c0080e7          	jalr	704(ra) # 80002064 <_ZN3PCB8dispatchEv>
    80003dac:	fc9ff06f          	j	80003d74 <_ZN5Riscv20handleSupervisorTrapEv+0x130>
            PCB::threadExitHandler();
    80003db0:	ffffe097          	auipc	ra,0xffffe
    80003db4:	500080e7          	jalr	1280(ra) # 800022b0 <_ZN3PCB17threadExitHandlerEv>
            break;
    80003db8:	fd5ff06f          	j	80003d8c <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003dbc:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003dc0:	14102773          	csrr	a4,sepc
    80003dc4:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003dc8:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003dcc:	00470713          	addi	a4,a4,4
    80003dd0:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003dd4:	10002773          	csrr	a4,sstatus
    80003dd8:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003ddc:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003de0:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80003de4:	04300713          	li	a4,67
    80003de8:	02f76463          	bltu	a4,a5,80003e10 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    80003dec:	00279793          	slli	a5,a5,0x2
    80003df0:	00004717          	auipc	a4,0x4
    80003df4:	42470713          	addi	a4,a4,1060 # 80008214 <CONSOLE_STATUS+0x204>
    80003df8:	00e787b3          	add	a5,a5,a4
    80003dfc:	0007a783          	lw	a5,0(a5)
    80003e00:	00e787b3          	add	a5,a5,a4
    80003e04:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    80003e08:	00000097          	auipc	ra,0x0
    80003e0c:	55c080e7          	jalr	1372(ra) # 80004364 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003e10:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003e14:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003e18:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003e1c:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003e20:	00000097          	auipc	ra,0x0
    80003e24:	de4080e7          	jalr	-540(ra) # 80003c04 <_ZN5Riscv14changePrivModeEv>
}
    80003e28:	f65ff06f          	j	80003d8c <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                    MemoryAllocator::memFreeHandler();
    80003e2c:	00000097          	auipc	ra,0x0
    80003e30:	59c080e7          	jalr	1436(ra) # 800043c8 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80003e34:	fddff06f          	j	80003e10 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadMakePCBHandler();
    80003e38:	ffffe097          	auipc	ra,0xffffe
    80003e3c:	63c080e7          	jalr	1596(ra) # 80002474 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80003e40:	fd1ff06f          	j	80003e10 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadCreateHandler();
    80003e44:	ffffe097          	auipc	ra,0xffffe
    80003e48:	54c080e7          	jalr	1356(ra) # 80002390 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80003e4c:	fc5ff06f          	j	80003e10 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadStartHandler();
    80003e50:	ffffe097          	auipc	ra,0xffffe
    80003e54:	5e0080e7          	jalr	1504(ra) # 80002430 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80003e58:	fb9ff06f          	j	80003e10 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadDispatchHandler();
    80003e5c:	ffffe097          	auipc	ra,0xffffe
    80003e60:	4a0080e7          	jalr	1184(ra) # 800022fc <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80003e64:	fadff06f          	j	80003e10 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadExitHandler();
    80003e68:	ffffe097          	auipc	ra,0xffffe
    80003e6c:	448080e7          	jalr	1096(ra) # 800022b0 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80003e70:	fa1ff06f          	j	80003e10 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadSleepHandler();
    80003e74:	ffffe097          	auipc	ra,0xffffe
    80003e78:	4b8080e7          	jalr	1208(ra) # 8000232c <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80003e7c:	f95ff06f          	j	80003e10 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                     PCB::threadDelPCBHandler();
    80003e80:	ffffe097          	auipc	ra,0xffffe
    80003e84:	688080e7          	jalr	1672(ra) # 80002508 <_ZN3PCB19threadDelPCBHandlerEv>
                     break;
    80003e88:	f89ff06f          	j	80003e10 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semOpenHandler();
    80003e8c:	00001097          	auipc	ra,0x1
    80003e90:	800080e7          	jalr	-2048(ra) # 8000468c <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80003e94:	f7dff06f          	j	80003e10 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semWaitHandler();
    80003e98:	00001097          	auipc	ra,0x1
    80003e9c:	894080e7          	jalr	-1900(ra) # 8000472c <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80003ea0:	f71ff06f          	j	80003e10 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semSignalHandler();
    80003ea4:	00001097          	auipc	ra,0x1
    80003ea8:	8dc080e7          	jalr	-1828(ra) # 80004780 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80003eac:	f65ff06f          	j	80003e10 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semCloseHandler();
    80003eb0:	00001097          	auipc	ra,0x1
    80003eb4:	914080e7          	jalr	-1772(ra) # 800047c4 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80003eb8:	f59ff06f          	j	80003e10 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getcHandler();
    80003ebc:	fffff097          	auipc	ra,0xfffff
    80003ec0:	0b0080e7          	jalr	176(ra) # 80002f6c <_ZN8KConsole11getcHandlerEv>
                    break;
    80003ec4:	f4dff06f          	j	80003e10 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::putcHandler();
    80003ec8:	fffff097          	auipc	ra,0xfffff
    80003ecc:	074080e7          	jalr	116(ra) # 80002f3c <_ZN8KConsole11putcHandlerEv>
                    break;
    80003ed0:	f41ff06f          	j	80003e10 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getCharHandler();
    80003ed4:	fffff097          	auipc	ra,0xfffff
    80003ed8:	1f4080e7          	jalr	500(ra) # 800030c8 <_ZN8KConsole14getCharHandlerEv>
                    break;
    80003edc:	f35ff06f          	j	80003e10 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>

0000000080003ee0 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003ee0:	ff010113          	addi	sp,sp,-16
    80003ee4:	00813423          	sd	s0,8(sp)
    80003ee8:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003eec:	0000a717          	auipc	a4,0xa
    80003ef0:	65c72703          	lw	a4,1628(a4) # 8000e548 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003ef4:	00100793          	li	a5,1
    80003ef8:	04f70263          	beq	a4,a5,80003f3c <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003efc:	0000a797          	auipc	a5,0xa
    80003f00:	64c78793          	addi	a5,a5,1612 # 8000e548 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003f04:	00100713          	li	a4,1
    80003f08:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003f0c:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003f10:	00006717          	auipc	a4,0x6
    80003f14:	4e073703          	ld	a4,1248(a4) # 8000a3f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003f18:	00073703          	ld	a4,0(a4)
    80003f1c:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003f20:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003f24:	00006797          	auipc	a5,0x6
    80003f28:	52c7b783          	ld	a5,1324(a5) # 8000a450 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003f2c:	0007b783          	ld	a5,0(a5)
    80003f30:	40e787b3          	sub	a5,a5,a4
    80003f34:	ff178793          	addi	a5,a5,-15
    80003f38:	00f73023          	sd	a5,0(a4)
}
    80003f3c:	00813403          	ld	s0,8(sp)
    80003f40:	01010113          	addi	sp,sp,16
    80003f44:	00008067          	ret

0000000080003f48 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    80003f48:	fd010113          	addi	sp,sp,-48
    80003f4c:	02113423          	sd	ra,40(sp)
    80003f50:	02813023          	sd	s0,32(sp)
    80003f54:	00913c23          	sd	s1,24(sp)
    80003f58:	01213823          	sd	s2,16(sp)
    80003f5c:	01313423          	sd	s3,8(sp)
    80003f60:	03010413          	addi	s0,sp,48
    80003f64:	00050493          	mv	s1,a0
    80003f68:	00058993          	mv	s3,a1
    80003f6c:	00060913          	mv	s2,a2
    initMemory();
    80003f70:	00000097          	auipc	ra,0x0
    80003f74:	f70080e7          	jalr	-144(ra) # 80003ee0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003f78:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003f7c:	0134b023          	sd	s3,0(s1)
    if(headAllocated == 0)
    80003f80:	0000a797          	auipc	a5,0xa
    80003f84:	5d07b783          	ld	a5,1488(a5) # 8000e550 <_ZN15MemoryAllocator13headAllocatedE>
    80003f88:	02078e63          	beqz	a5,80003fc4 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x7c>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    80003f8c:	00006717          	auipc	a4,0x6
    80003f90:	4c473703          	ld	a4,1220(a4) # 8000a450 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003f94:	00073703          	ld	a4,0(a4)
    80003f98:	03276c63          	bltu	a4,s2,80003fd0 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x88>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    80003f9c:	00893783          	ld	a5,8(s2)
    80003fa0:	00f4b423          	sd	a5,8(s1)
        allFrag->next = newAllocated;
    80003fa4:	00993423          	sd	s1,8(s2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    80003fa8:	02813083          	ld	ra,40(sp)
    80003fac:	02013403          	ld	s0,32(sp)
    80003fb0:	01813483          	ld	s1,24(sp)
    80003fb4:	01013903          	ld	s2,16(sp)
    80003fb8:	00813983          	ld	s3,8(sp)
    80003fbc:	03010113          	addi	sp,sp,48
    80003fc0:	00008067          	ret
        headAllocated = newAllocated;
    80003fc4:	0000a797          	auipc	a5,0xa
    80003fc8:	5897b623          	sd	s1,1420(a5) # 8000e550 <_ZN15MemoryAllocator13headAllocatedE>
    80003fcc:	fddff06f          	j	80003fa8 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
        newAllocated->next = headAllocated;
    80003fd0:	00f4b423          	sd	a5,8(s1)
        headAllocated = newAllocated;
    80003fd4:	0000a797          	auipc	a5,0xa
    80003fd8:	5697be23          	sd	s1,1404(a5) # 8000e550 <_ZN15MemoryAllocator13headAllocatedE>
}
    80003fdc:	fcdff06f          	j	80003fa8 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>

0000000080003fe0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80003fe0:	fe010113          	addi	sp,sp,-32
    80003fe4:	00113c23          	sd	ra,24(sp)
    80003fe8:	00813823          	sd	s0,16(sp)
    80003fec:	00913423          	sd	s1,8(sp)
    80003ff0:	01213023          	sd	s2,0(sp)
    80003ff4:	02010413          	addi	s0,sp,32
    80003ff8:	00050493          	mv	s1,a0
    80003ffc:	00058913          	mv	s2,a1
    initMemory();
    80004000:	00000097          	auipc	ra,0x0
    80004004:	ee0080e7          	jalr	-288(ra) # 80003ee0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80004008:	0000a797          	auipc	a5,0xa
    8000400c:	5487b783          	ld	a5,1352(a5) # 8000e550 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004010:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80004014:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80004018:	00000713          	li	a4,0
    while(curr != 0)
    8000401c:	00078c63          	beqz	a5,80004034 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80004020:	00f4e863          	bltu	s1,a5,80004030 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004024:	00078713          	mv	a4,a5
        curr = curr->next;
    80004028:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000402c:	ff1ff06f          	j	8000401c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80004030:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80004034:	02070063          	beqz	a4,80004054 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80004038:	00973423          	sd	s1,8(a4)
}
    8000403c:	01813083          	ld	ra,24(sp)
    80004040:	01013403          	ld	s0,16(sp)
    80004044:	00813483          	ld	s1,8(sp)
    80004048:	00013903          	ld	s2,0(sp)
    8000404c:	02010113          	addi	sp,sp,32
    80004050:	00008067          	ret
        headAllocated = newAllocated;
    80004054:	0000a797          	auipc	a5,0xa
    80004058:	4e97be23          	sd	s1,1276(a5) # 8000e550 <_ZN15MemoryAllocator13headAllocatedE>
    8000405c:	fe1ff06f          	j	8000403c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080004060 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80004060:	fe010113          	addi	sp,sp,-32
    80004064:	00113c23          	sd	ra,24(sp)
    80004068:	00813823          	sd	s0,16(sp)
    8000406c:	00913423          	sd	s1,8(sp)
    80004070:	01213023          	sd	s2,0(sp)
    80004074:	02010413          	addi	s0,sp,32
    80004078:	00050913          	mv	s2,a0
    initMemory();
    8000407c:	00000097          	auipc	ra,0x0
    80004080:	e64080e7          	jalr	-412(ra) # 80003ee0 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004084:	0000a497          	auipc	s1,0xa
    80004088:	4d44b483          	ld	s1,1236(s1) # 8000e558 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    8000408c:	00000713          	li	a4,0
    while(curr != 0)
    80004090:	0c048063          	beqz	s1,80004150 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
    {
        if(curr->size >= size)
    80004094:	0004b783          	ld	a5,0(s1)
    80004098:	0127f863          	bgeu	a5,s2,800040a8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    8000409c:	00048713          	mv	a4,s1
        curr = curr->next;
    800040a0:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800040a4:	fedff06f          	j	80004090 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    800040a8:	01090693          	addi	a3,s2,16
    800040ac:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    800040b0:	01078613          	addi	a2,a5,16
    800040b4:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    800040b8:	00006597          	auipc	a1,0x6
    800040bc:	3985b583          	ld	a1,920(a1) # 8000a450 <_GLOBAL_OFFSET_TABLE_+0x78>
    800040c0:	0005b583          	ld	a1,0(a1)
    800040c4:	06d5e063          	bltu	a1,a3,80004124 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    800040c8:	412785b3          	sub	a1,a5,s2
                if(size2 > sizeof(BlockHeader))
    800040cc:	01000513          	li	a0,16
    800040d0:	02b57663          	bgeu	a0,a1,800040fc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    800040d4:	0084b783          	ld	a5,8(s1)
    800040d8:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    800040dc:	ff058593          	addi	a1,a1,-16
    800040e0:	00b6b023          	sd	a1,0(a3)
                    if (prev != 0)
    800040e4:	00070663          	beqz	a4,800040f0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    800040e8:	00d73423          	sd	a3,8(a4)
    800040ec:	0400006f          	j	8000412c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    800040f0:	0000a797          	auipc	a5,0xa
    800040f4:	46d7b423          	sd	a3,1128(a5) # 8000e558 <_ZN15MemoryAllocator8headFreeE>
    800040f8:	0340006f          	j	8000412c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    800040fc:	00070a63          	beqz	a4,80004110 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    80004100:	0084b683          	ld	a3,8(s1)
    80004104:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    80004108:	00078913          	mv	s2,a5
    8000410c:	0200006f          	j	8000412c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    80004110:	0084b703          	ld	a4,8(s1)
    80004114:	0000a697          	auipc	a3,0xa
    80004118:	44e6b223          	sd	a4,1092(a3) # 8000e558 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    8000411c:	00078913          	mv	s2,a5
    80004120:	00c0006f          	j	8000412c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80004124:	02070063          	beqz	a4,80004144 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    prev->next = 0;
    80004128:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    8000412c:	00090593          	mv	a1,s2
    80004130:	00048513          	mv	a0,s1
    80004134:	00000097          	auipc	ra,0x0
    80004138:	e14080e7          	jalr	-492(ra) # 80003f48 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    8000413c:	01048513          	addi	a0,s1,16
            break;
    80004140:	0140006f          	j	80004154 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf4>
                    headFree = 0;
    80004144:	0000a797          	auipc	a5,0xa
    80004148:	4007ba23          	sd	zero,1044(a5) # 8000e558 <_ZN15MemoryAllocator8headFreeE>
    8000414c:	fe1ff06f          	j	8000412c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    80004150:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004154:	01813083          	ld	ra,24(sp)
    80004158:	01013403          	ld	s0,16(sp)
    8000415c:	00813483          	ld	s1,8(sp)
    80004160:	00013903          	ld	s2,0(sp)
    80004164:	02010113          	addi	sp,sp,32
    80004168:	00008067          	ret

000000008000416c <_ZN15MemoryAllocator9mem_allocEm>:
{
    8000416c:	ff010113          	addi	sp,sp,-16
    80004170:	00113423          	sd	ra,8(sp)
    80004174:	00813023          	sd	s0,0(sp)
    80004178:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    8000417c:	00000097          	auipc	ra,0x0
    80004180:	ee4080e7          	jalr	-284(ra) # 80004060 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004184:	00813083          	ld	ra,8(sp)
    80004188:	00013403          	ld	s0,0(sp)
    8000418c:	01010113          	addi	sp,sp,16
    80004190:	00008067          	ret

0000000080004194 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80004194:	fe010113          	addi	sp,sp,-32
    80004198:	00113c23          	sd	ra,24(sp)
    8000419c:	00813823          	sd	s0,16(sp)
    800041a0:	00913423          	sd	s1,8(sp)
    800041a4:	01213023          	sd	s2,0(sp)
    800041a8:	02010413          	addi	s0,sp,32
    800041ac:	00050493          	mv	s1,a0
    800041b0:	00058913          	mv	s2,a1
    initMemory();
    800041b4:	00000097          	auipc	ra,0x0
    800041b8:	d2c080e7          	jalr	-724(ra) # 80003ee0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800041bc:	0000a797          	auipc	a5,0xa
    800041c0:	39c7b783          	ld	a5,924(a5) # 8000e558 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800041c4:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    800041c8:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    800041cc:	00000713          	li	a4,0
    while(curr != 0)
    800041d0:	00078c63          	beqz	a5,800041e8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800041d4:	00f4e863          	bltu	s1,a5,800041e4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800041d8:	00078713          	mv	a4,a5
        curr = curr->next;
    800041dc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800041e0:	ff1ff06f          	j	800041d0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    800041e4:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800041e8:	04070663          	beqz	a4,80004234 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    800041ec:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    800041f0:	0084b783          	ld	a5,8(s1)
    800041f4:	00078a63          	beqz	a5,80004208 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    800041f8:	0004b603          	ld	a2,0(s1)
    800041fc:	01060693          	addi	a3,a2,16
    80004200:	00d486b3          	add	a3,s1,a3
    80004204:	02d78e63          	beq	a5,a3,80004240 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80004208:	00070a63          	beqz	a4,8000421c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    8000420c:	00073683          	ld	a3,0(a4)
    80004210:	01068793          	addi	a5,a3,16
    80004214:	00f707b3          	add	a5,a4,a5
    80004218:	04978263          	beq	a5,s1,8000425c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    8000421c:	01813083          	ld	ra,24(sp)
    80004220:	01013403          	ld	s0,16(sp)
    80004224:	00813483          	ld	s1,8(sp)
    80004228:	00013903          	ld	s2,0(sp)
    8000422c:	02010113          	addi	sp,sp,32
    80004230:	00008067          	ret
        headFree = newSegment;
    80004234:	0000a797          	auipc	a5,0xa
    80004238:	3297b223          	sd	s1,804(a5) # 8000e558 <_ZN15MemoryAllocator8headFreeE>
    8000423c:	fb5ff06f          	j	800041f0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004240:	0007b683          	ld	a3,0(a5)
    80004244:	00d60633          	add	a2,a2,a3
    80004248:	01060613          	addi	a2,a2,16
    8000424c:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80004250:	0087b783          	ld	a5,8(a5)
    80004254:	00f4b423          	sd	a5,8(s1)
    80004258:	fb1ff06f          	j	80004208 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    8000425c:	0004b783          	ld	a5,0(s1)
    80004260:	00f686b3          	add	a3,a3,a5
    80004264:	01068693          	addi	a3,a3,16
    80004268:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    8000426c:	0084b783          	ld	a5,8(s1)
    80004270:	00f73423          	sd	a5,8(a4)
}
    80004274:	fa9ff06f          	j	8000421c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080004278 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80004278:	fe010113          	addi	sp,sp,-32
    8000427c:	00113c23          	sd	ra,24(sp)
    80004280:	00813823          	sd	s0,16(sp)
    80004284:	00913423          	sd	s1,8(sp)
    80004288:	01213023          	sd	s2,0(sp)
    8000428c:	02010413          	addi	s0,sp,32
    80004290:	00050913          	mv	s2,a0
    initMemory();
    80004294:	00000097          	auipc	ra,0x0
    80004298:	c4c080e7          	jalr	-948(ra) # 80003ee0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    8000429c:	0000a497          	auipc	s1,0xa
    800042a0:	2b44b483          	ld	s1,692(s1) # 8000e550 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    800042a4:	00000713          	li	a4,0
    while(curr != 0)
    800042a8:	02048a63          	beqz	s1,800042dc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    800042ac:	01048793          	addi	a5,s1,16
    800042b0:	01278863          	beq	a5,s2,800042c0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    800042b4:	00048713          	mv	a4,s1
        curr = curr->next;
    800042b8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800042bc:	fedff06f          	j	800042a8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    800042c0:	02070e63          	beqz	a4,800042fc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    800042c4:	0084b783          	ld	a5,8(s1)
    800042c8:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    800042cc:	0004b583          	ld	a1,0(s1)
    800042d0:	00048513          	mv	a0,s1
    800042d4:	00000097          	auipc	ra,0x0
    800042d8:	ec0080e7          	jalr	-320(ra) # 80004194 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    800042dc:	02048863          	beqz	s1,8000430c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    800042e0:	00000513          	li	a0,0
    else
        return 1;
}
    800042e4:	01813083          	ld	ra,24(sp)
    800042e8:	01013403          	ld	s0,16(sp)
    800042ec:	00813483          	ld	s1,8(sp)
    800042f0:	00013903          	ld	s2,0(sp)
    800042f4:	02010113          	addi	sp,sp,32
    800042f8:	00008067          	ret
                headAllocated = curr->next;
    800042fc:	0084b783          	ld	a5,8(s1)
    80004300:	0000a717          	auipc	a4,0xa
    80004304:	24f73823          	sd	a5,592(a4) # 8000e550 <_ZN15MemoryAllocator13headAllocatedE>
    80004308:	fc5ff06f          	j	800042cc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    8000430c:	00100513          	li	a0,1
    80004310:	fd5ff06f          	j	800042e4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080004314 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004314:	ff010113          	addi	sp,sp,-16
    80004318:	00113423          	sd	ra,8(sp)
    8000431c:	00813023          	sd	s0,0(sp)
    80004320:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004324:	00000097          	auipc	ra,0x0
    80004328:	f54080e7          	jalr	-172(ra) # 80004278 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    8000432c:	00813083          	ld	ra,8(sp)
    80004330:	00013403          	ld	s0,0(sp)
    80004334:	01010113          	addi	sp,sp,16
    80004338:	00008067          	ret

000000008000433c <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    8000433c:	ff010113          	addi	sp,sp,-16
    80004340:	00113423          	sd	ra,8(sp)
    80004344:	00813023          	sd	s0,0(sp)
    80004348:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    8000434c:	00000097          	auipc	ra,0x0
    80004350:	e20080e7          	jalr	-480(ra) # 8000416c <_ZN15MemoryAllocator9mem_allocEm>
}
    80004354:	00813083          	ld	ra,8(sp)
    80004358:	00013403          	ld	s0,0(sp)
    8000435c:	01010113          	addi	sp,sp,16
    80004360:	00008067          	ret

0000000080004364 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004364:	ff010113          	addi	sp,sp,-16
    80004368:	00113423          	sd	ra,8(sp)
    8000436c:	00813023          	sd	s0,0(sp)
    80004370:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004374:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004378:	00651513          	slli	a0,a0,0x6
    8000437c:	00000097          	auipc	ra,0x0
    80004380:	fc0080e7          	jalr	-64(ra) # 8000433c <_ZN15MemoryAllocator7kmallocEm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004384:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004388:	00000097          	auipc	ra,0x0
    8000438c:	844080e7          	jalr	-1980(ra) # 80003bcc <_ZN5Riscv13w_a0_sscratchEv>
}
    80004390:	00813083          	ld	ra,8(sp)
    80004394:	00013403          	ld	s0,0(sp)
    80004398:	01010113          	addi	sp,sp,16
    8000439c:	00008067          	ret

00000000800043a0 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    800043a0:	ff010113          	addi	sp,sp,-16
    800043a4:	00113423          	sd	ra,8(sp)
    800043a8:	00813023          	sd	s0,0(sp)
    800043ac:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    800043b0:	00000097          	auipc	ra,0x0
    800043b4:	f64080e7          	jalr	-156(ra) # 80004314 <_ZN15MemoryAllocator8mem_freeEPv>
    800043b8:	00813083          	ld	ra,8(sp)
    800043bc:	00013403          	ld	s0,0(sp)
    800043c0:	01010113          	addi	sp,sp,16
    800043c4:	00008067          	ret

00000000800043c8 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    800043c8:	ff010113          	addi	sp,sp,-16
    800043cc:	00113423          	sd	ra,8(sp)
    800043d0:	00813023          	sd	s0,0(sp)
    800043d4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    800043d8:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    800043dc:	00000097          	auipc	ra,0x0
    800043e0:	fc4080e7          	jalr	-60(ra) # 800043a0 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800043e4:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800043e8:	fffff097          	auipc	ra,0xfffff
    800043ec:	7e4080e7          	jalr	2020(ra) # 80003bcc <_ZN5Riscv13w_a0_sscratchEv>
}
    800043f0:	00813083          	ld	ra,8(sp)
    800043f4:	00013403          	ld	s0,0(sp)
    800043f8:	01010113          	addi	sp,sp,16
    800043fc:	00008067          	ret

0000000080004400 <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    80004400:	ff010113          	addi	sp,sp,-16
    80004404:	00813423          	sd	s0,8(sp)
    80004408:	01010413          	addi	s0,sp,16
{
    this->val = val;
    8000440c:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004410:	00053423          	sd	zero,8(a0)
    80004414:	00053023          	sd	zero,0(a0)
}
    80004418:	00813403          	ld	s0,8(sp)
    8000441c:	01010113          	addi	sp,sp,16
    80004420:	00008067          	ret

0000000080004424 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004424:	ff010113          	addi	sp,sp,-16
    80004428:	00813423          	sd	s0,8(sp)
    8000442c:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004430:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004434:	00053783          	ld	a5,0(a0)
    80004438:	00078e63          	beqz	a5,80004454 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    8000443c:	00853783          	ld	a5,8(a0)
    80004440:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80004444:	00b53423          	sd	a1,8(a0)
    }
}
    80004448:	00813403          	ld	s0,8(sp)
    8000444c:	01010113          	addi	sp,sp,16
    80004450:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80004454:	00b53423          	sd	a1,8(a0)
    80004458:	00b53023          	sd	a1,0(a0)
    8000445c:	fedff06f          	j	80004448 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080004460 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80004460:	ff010113          	addi	sp,sp,-16
    80004464:	00113423          	sd	ra,8(sp)
    80004468:	00813023          	sd	s0,0(sp)
    8000446c:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004470:	00006797          	auipc	a5,0x6
    80004474:	fd87b783          	ld	a5,-40(a5) # 8000a448 <_GLOBAL_OFFSET_TABLE_+0x70>
    80004478:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    8000447c:	00200793          	li	a5,2
    80004480:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    80004484:	00000097          	auipc	ra,0x0
    80004488:	fa0080e7          	jalr	-96(ra) # 80004424 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    8000448c:	ffffe097          	auipc	ra,0xffffe
    80004490:	bd8080e7          	jalr	-1064(ra) # 80002064 <_ZN3PCB8dispatchEv>
}
    80004494:	00813083          	ld	ra,8(sp)
    80004498:	00013403          	ld	s0,0(sp)
    8000449c:	01010113          	addi	sp,sp,16
    800044a0:	00008067          	ret

00000000800044a4 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    800044a4:	00006797          	auipc	a5,0x6
    800044a8:	fa47b783          	ld	a5,-92(a5) # 8000a448 <_GLOBAL_OFFSET_TABLE_+0x70>
    800044ac:	0007b783          	ld	a5,0(a5)
    800044b0:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    800044b4:	01052783          	lw	a5,16(a0)
    800044b8:	fff7879b          	addiw	a5,a5,-1
    800044bc:	00f52823          	sw	a5,16(a0)
    800044c0:	02079713          	slli	a4,a5,0x20
    800044c4:	00074663          	bltz	a4,800044d0 <_ZN10KSemaphore4waitEv+0x2c>
}
    800044c8:	00000513          	li	a0,0
    800044cc:	00008067          	ret
{
    800044d0:	ff010113          	addi	sp,sp,-16
    800044d4:	00113423          	sd	ra,8(sp)
    800044d8:	00813023          	sd	s0,0(sp)
    800044dc:	01010413          	addi	s0,sp,16
        block();
    800044e0:	00000097          	auipc	ra,0x0
    800044e4:	f80080e7          	jalr	-128(ra) # 80004460 <_ZN10KSemaphore5blockEv>
}
    800044e8:	00000513          	li	a0,0
    800044ec:	00813083          	ld	ra,8(sp)
    800044f0:	00013403          	ld	s0,0(sp)
    800044f4:	01010113          	addi	sp,sp,16
    800044f8:	00008067          	ret

00000000800044fc <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    800044fc:	ff010113          	addi	sp,sp,-16
    80004500:	00813423          	sd	s0,8(sp)
    80004504:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004508:	00053503          	ld	a0,0(a0)
    8000450c:	00813403          	ld	s0,8(sp)
    80004510:	01010113          	addi	sp,sp,16
    80004514:	00008067          	ret

0000000080004518 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004518:	ff010113          	addi	sp,sp,-16
    8000451c:	00813423          	sd	s0,8(sp)
    80004520:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004524:	00053783          	ld	a5,0(a0)
    80004528:	00078c63          	beqz	a5,80004540 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    8000452c:	0087b703          	ld	a4,8(a5)
    80004530:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004534:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004538:	00053783          	ld	a5,0(a0)
    8000453c:	00078863          	beqz	a5,8000454c <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80004540:	00813403          	ld	s0,8(sp)
    80004544:	01010113          	addi	sp,sp,16
    80004548:	00008067          	ret
        tailBlocked =0;
    8000454c:	00053423          	sd	zero,8(a0)
    80004550:	ff1ff06f          	j	80004540 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080004554 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80004554:	fe010113          	addi	sp,sp,-32
    80004558:	00113c23          	sd	ra,24(sp)
    8000455c:	00813823          	sd	s0,16(sp)
    80004560:	00913423          	sd	s1,8(sp)
    80004564:	01213023          	sd	s2,0(sp)
    80004568:	02010413          	addi	s0,sp,32
    8000456c:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80004570:	00090513          	mv	a0,s2
    80004574:	00000097          	auipc	ra,0x0
    80004578:	f88080e7          	jalr	-120(ra) # 800044fc <_ZN10KSemaphore15getFirstBlockedEv>
    8000457c:	00050493          	mv	s1,a0
    80004580:	02050463          	beqz	a0,800045a8 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    80004584:	00090513          	mv	a0,s2
    80004588:	00000097          	auipc	ra,0x0
    8000458c:	f90080e7          	jalr	-112(ra) # 80004518 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    80004590:	00100793          	li	a5,1
    80004594:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    80004598:	00048513          	mv	a0,s1
    8000459c:	fffff097          	auipc	ra,0xfffff
    800045a0:	dfc080e7          	jalr	-516(ra) # 80003398 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    800045a4:	fcdff06f          	j	80004570 <_ZN10KSemaphoreD1Ev+0x1c>
}
    800045a8:	01813083          	ld	ra,24(sp)
    800045ac:	01013403          	ld	s0,16(sp)
    800045b0:	00813483          	ld	s1,8(sp)
    800045b4:	00013903          	ld	s2,0(sp)
    800045b8:	02010113          	addi	sp,sp,32
    800045bc:	00008067          	ret

00000000800045c0 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800045c0:	fe010113          	addi	sp,sp,-32
    800045c4:	00113c23          	sd	ra,24(sp)
    800045c8:	00813823          	sd	s0,16(sp)
    800045cc:	00913423          	sd	s1,8(sp)
    800045d0:	01213023          	sd	s2,0(sp)
    800045d4:	02010413          	addi	s0,sp,32
    800045d8:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    800045dc:	00000097          	auipc	ra,0x0
    800045e0:	f20080e7          	jalr	-224(ra) # 800044fc <_ZN10KSemaphore15getFirstBlockedEv>
    800045e4:	00050493          	mv	s1,a0
    removeFirstBlocked();
    800045e8:	00090513          	mv	a0,s2
    800045ec:	00000097          	auipc	ra,0x0
    800045f0:	f2c080e7          	jalr	-212(ra) # 80004518 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    800045f4:	00048863          	beqz	s1,80004604 <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    800045f8:	00048513          	mv	a0,s1
    800045fc:	fffff097          	auipc	ra,0xfffff
    80004600:	d9c080e7          	jalr	-612(ra) # 80003398 <_ZN9Scheduler3putEP3PCB>
    }
}
    80004604:	01813083          	ld	ra,24(sp)
    80004608:	01013403          	ld	s0,16(sp)
    8000460c:	00813483          	ld	s1,8(sp)
    80004610:	00013903          	ld	s2,0(sp)
    80004614:	02010113          	addi	sp,sp,32
    80004618:	00008067          	ret

000000008000461c <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    8000461c:	01052783          	lw	a5,16(a0)
    80004620:	0017879b          	addiw	a5,a5,1
    80004624:	0007871b          	sext.w	a4,a5
    80004628:	00f52823          	sw	a5,16(a0)
    8000462c:	00e05663          	blez	a4,80004638 <_ZN10KSemaphore6signalEv+0x1c>
}
    80004630:	00000513          	li	a0,0
    80004634:	00008067          	ret
uint64 KSemaphore::signal() {
    80004638:	ff010113          	addi	sp,sp,-16
    8000463c:	00113423          	sd	ra,8(sp)
    80004640:	00813023          	sd	s0,0(sp)
    80004644:	01010413          	addi	s0,sp,16
        unblock();
    80004648:	00000097          	auipc	ra,0x0
    8000464c:	f78080e7          	jalr	-136(ra) # 800045c0 <_ZN10KSemaphore7unblockEv>
}
    80004650:	00000513          	li	a0,0
    80004654:	00813083          	ld	ra,8(sp)
    80004658:	00013403          	ld	s0,0(sp)
    8000465c:	01010113          	addi	sp,sp,16
    80004660:	00008067          	ret

0000000080004664 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    80004664:	ff010113          	addi	sp,sp,-16
    80004668:	00113423          	sd	ra,8(sp)
    8000466c:	00813023          	sd	s0,0(sp)
    80004670:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80004674:	00000097          	auipc	ra,0x0
    80004678:	cc8080e7          	jalr	-824(ra) # 8000433c <_ZN15MemoryAllocator7kmallocEm>
}
    8000467c:	00813083          	ld	ra,8(sp)
    80004680:	00013403          	ld	s0,0(sp)
    80004684:	01010113          	addi	sp,sp,16
    80004688:	00008067          	ret

000000008000468c <_ZN10KSemaphore14semOpenHandlerEv>:
{
    8000468c:	fd010113          	addi	sp,sp,-48
    80004690:	02113423          	sd	ra,40(sp)
    80004694:	02813023          	sd	s0,32(sp)
    80004698:	00913c23          	sd	s1,24(sp)
    8000469c:	01213823          	sd	s2,16(sp)
    800046a0:	01313423          	sd	s3,8(sp)
    800046a4:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    800046a8:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    800046ac:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    800046b0:	01800513          	li	a0,24
    800046b4:	00000097          	auipc	ra,0x0
    800046b8:	fb0080e7          	jalr	-80(ra) # 80004664 <_ZN10KSemaphorenwEm>
    800046bc:	00050493          	mv	s1,a0
    800046c0:	0009859b          	sext.w	a1,s3
    800046c4:	00000097          	auipc	ra,0x0
    800046c8:	d3c080e7          	jalr	-708(ra) # 80004400 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    800046cc:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    800046d0:	02048663          	beqz	s1,800046fc <_ZN10KSemaphore14semOpenHandlerEv+0x70>
            __asm__ volatile("li a0, 0");
    800046d4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800046d8:	fffff097          	auipc	ra,0xfffff
    800046dc:	4f4080e7          	jalr	1268(ra) # 80003bcc <_ZN5Riscv13w_a0_sscratchEv>
}
    800046e0:	02813083          	ld	ra,40(sp)
    800046e4:	02013403          	ld	s0,32(sp)
    800046e8:	01813483          	ld	s1,24(sp)
    800046ec:	01013903          	ld	s2,16(sp)
    800046f0:	00813983          	ld	s3,8(sp)
    800046f4:	03010113          	addi	sp,sp,48
    800046f8:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    800046fc:	fff00513          	li	a0,-1
    80004700:	fd9ff06f          	j	800046d8 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

0000000080004704 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80004704:	ff010113          	addi	sp,sp,-16
    80004708:	00113423          	sd	ra,8(sp)
    8000470c:	00813023          	sd	s0,0(sp)
    80004710:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80004714:	00000097          	auipc	ra,0x0
    80004718:	c8c080e7          	jalr	-884(ra) # 800043a0 <_ZN15MemoryAllocator5kfreeEPv>
}
    8000471c:	00813083          	ld	ra,8(sp)
    80004720:	00013403          	ld	s0,0(sp)
    80004724:	01010113          	addi	sp,sp,16
    80004728:	00008067          	ret

000000008000472c <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    8000472c:	ff010113          	addi	sp,sp,-16
    80004730:	00113423          	sd	ra,8(sp)
    80004734:	00813023          	sd	s0,0(sp)
    80004738:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    8000473c:	00058513          	mv	a0,a1
    kSem->wait();
    80004740:	00000097          	auipc	ra,0x0
    80004744:	d64080e7          	jalr	-668(ra) # 800044a4 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    80004748:	00006797          	auipc	a5,0x6
    8000474c:	d007b783          	ld	a5,-768(a5) # 8000a448 <_GLOBAL_OFFSET_TABLE_+0x70>
    80004750:	0007b783          	ld	a5,0(a5)
    80004754:	0587c783          	lbu	a5,88(a5)
    80004758:	02078063          	beqz	a5,80004778 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    8000475c:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    80004760:	fffff097          	auipc	ra,0xfffff
    80004764:	46c080e7          	jalr	1132(ra) # 80003bcc <_ZN5Riscv13w_a0_sscratchEv>
}
    80004768:	00813083          	ld	ra,8(sp)
    8000476c:	00013403          	ld	s0,0(sp)
    80004770:	01010113          	addi	sp,sp,16
    80004774:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80004778:	00000513          	li	a0,0
    8000477c:	fe5ff06f          	j	80004760 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

0000000080004780 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    80004780:	ff010113          	addi	sp,sp,-16
    80004784:	00113423          	sd	ra,8(sp)
    80004788:	00813023          	sd	s0,0(sp)
    8000478c:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004790:	00058513          	mv	a0,a1
    if (kSem == 0)
    80004794:	02050463          	beqz	a0,800047bc <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    80004798:	00000097          	auipc	ra,0x0
    8000479c:	e84080e7          	jalr	-380(ra) # 8000461c <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    800047a0:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    800047a4:	fffff097          	auipc	ra,0xfffff
    800047a8:	428080e7          	jalr	1064(ra) # 80003bcc <_ZN5Riscv13w_a0_sscratchEv>
}
    800047ac:	00813083          	ld	ra,8(sp)
    800047b0:	00013403          	ld	s0,0(sp)
    800047b4:	01010113          	addi	sp,sp,16
    800047b8:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    800047bc:	00100513          	li	a0,1
    800047c0:	fe5ff06f          	j	800047a4 <_ZN10KSemaphore16semSignalHandlerEv+0x24>

00000000800047c4 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    800047c4:	fe010113          	addi	sp,sp,-32
    800047c8:	00113c23          	sd	ra,24(sp)
    800047cc:	00813823          	sd	s0,16(sp)
    800047d0:	00913423          	sd	s1,8(sp)
    800047d4:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800047d8:	00058493          	mv	s1,a1
    delete kSem;
    800047dc:	00048e63          	beqz	s1,800047f8 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    800047e0:	00048513          	mv	a0,s1
    800047e4:	00000097          	auipc	ra,0x0
    800047e8:	d70080e7          	jalr	-656(ra) # 80004554 <_ZN10KSemaphoreD1Ev>
    800047ec:	00048513          	mv	a0,s1
    800047f0:	00000097          	auipc	ra,0x0
    800047f4:	f14080e7          	jalr	-236(ra) # 80004704 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    800047f8:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800047fc:	fffff097          	auipc	ra,0xfffff
    80004800:	3d0080e7          	jalr	976(ra) # 80003bcc <_ZN5Riscv13w_a0_sscratchEv>
}
    80004804:	01813083          	ld	ra,24(sp)
    80004808:	01013403          	ld	s0,16(sp)
    8000480c:	00813483          	ld	s1,8(sp)
    80004810:	02010113          	addi	sp,sp,32
    80004814:	00008067          	ret

0000000080004818 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004818:	fe010113          	addi	sp,sp,-32
    8000481c:	00113c23          	sd	ra,24(sp)
    80004820:	00813823          	sd	s0,16(sp)
    80004824:	00913423          	sd	s1,8(sp)
    80004828:	02010413          	addi	s0,sp,32
    8000482c:	00050493          	mv	s1,a0
    LOCK();
    80004830:	00100613          	li	a2,1
    80004834:	00000593          	li	a1,0
    80004838:	0000a517          	auipc	a0,0xa
    8000483c:	d2850513          	addi	a0,a0,-728 # 8000e560 <lockPrint>
    80004840:	ffffd097          	auipc	ra,0xffffd
    80004844:	9d8080e7          	jalr	-1576(ra) # 80001218 <copy_and_swap>
    80004848:	fe0514e3          	bnez	a0,80004830 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000484c:	0004c503          	lbu	a0,0(s1)
    80004850:	00050a63          	beqz	a0,80004864 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80004854:	ffffd097          	auipc	ra,0xffffd
    80004858:	6b4080e7          	jalr	1716(ra) # 80001f08 <_Z4putcc>
        string++;
    8000485c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004860:	fedff06f          	j	8000484c <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80004864:	00000613          	li	a2,0
    80004868:	00100593          	li	a1,1
    8000486c:	0000a517          	auipc	a0,0xa
    80004870:	cf450513          	addi	a0,a0,-780 # 8000e560 <lockPrint>
    80004874:	ffffd097          	auipc	ra,0xffffd
    80004878:	9a4080e7          	jalr	-1628(ra) # 80001218 <copy_and_swap>
    8000487c:	fe0514e3          	bnez	a0,80004864 <_Z11printStringPKc+0x4c>
}
    80004880:	01813083          	ld	ra,24(sp)
    80004884:	01013403          	ld	s0,16(sp)
    80004888:	00813483          	ld	s1,8(sp)
    8000488c:	02010113          	addi	sp,sp,32
    80004890:	00008067          	ret

0000000080004894 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004894:	fd010113          	addi	sp,sp,-48
    80004898:	02113423          	sd	ra,40(sp)
    8000489c:	02813023          	sd	s0,32(sp)
    800048a0:	00913c23          	sd	s1,24(sp)
    800048a4:	01213823          	sd	s2,16(sp)
    800048a8:	01313423          	sd	s3,8(sp)
    800048ac:	01413023          	sd	s4,0(sp)
    800048b0:	03010413          	addi	s0,sp,48
    800048b4:	00050993          	mv	s3,a0
    800048b8:	00058a13          	mv	s4,a1
    LOCK();
    800048bc:	00100613          	li	a2,1
    800048c0:	00000593          	li	a1,0
    800048c4:	0000a517          	auipc	a0,0xa
    800048c8:	c9c50513          	addi	a0,a0,-868 # 8000e560 <lockPrint>
    800048cc:	ffffd097          	auipc	ra,0xffffd
    800048d0:	94c080e7          	jalr	-1716(ra) # 80001218 <copy_and_swap>
    800048d4:	fe0514e3          	bnez	a0,800048bc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800048d8:	00000913          	li	s2,0
    800048dc:	00090493          	mv	s1,s2
    800048e0:	0019091b          	addiw	s2,s2,1
    800048e4:	03495a63          	bge	s2,s4,80004918 <_Z9getStringPci+0x84>
        cc = getc();
    800048e8:	ffffd097          	auipc	ra,0xffffd
    800048ec:	5f8080e7          	jalr	1528(ra) # 80001ee0 <_Z4getcv>
        if(cc < 1)
    800048f0:	02050463          	beqz	a0,80004918 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    800048f4:	009984b3          	add	s1,s3,s1
    800048f8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800048fc:	00a00793          	li	a5,10
    80004900:	00f50a63          	beq	a0,a5,80004914 <_Z9getStringPci+0x80>
    80004904:	00d00793          	li	a5,13
    80004908:	fcf51ae3          	bne	a0,a5,800048dc <_Z9getStringPci+0x48>
        buf[i++] = c;
    8000490c:	00090493          	mv	s1,s2
    80004910:	0080006f          	j	80004918 <_Z9getStringPci+0x84>
    80004914:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004918:	009984b3          	add	s1,s3,s1
    8000491c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004920:	00000613          	li	a2,0
    80004924:	00100593          	li	a1,1
    80004928:	0000a517          	auipc	a0,0xa
    8000492c:	c3850513          	addi	a0,a0,-968 # 8000e560 <lockPrint>
    80004930:	ffffd097          	auipc	ra,0xffffd
    80004934:	8e8080e7          	jalr	-1816(ra) # 80001218 <copy_and_swap>
    80004938:	fe0514e3          	bnez	a0,80004920 <_Z9getStringPci+0x8c>
    return buf;
}
    8000493c:	00098513          	mv	a0,s3
    80004940:	02813083          	ld	ra,40(sp)
    80004944:	02013403          	ld	s0,32(sp)
    80004948:	01813483          	ld	s1,24(sp)
    8000494c:	01013903          	ld	s2,16(sp)
    80004950:	00813983          	ld	s3,8(sp)
    80004954:	00013a03          	ld	s4,0(sp)
    80004958:	03010113          	addi	sp,sp,48
    8000495c:	00008067          	ret

0000000080004960 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004960:	ff010113          	addi	sp,sp,-16
    80004964:	00813423          	sd	s0,8(sp)
    80004968:	01010413          	addi	s0,sp,16
    8000496c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004970:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004974:	0006c603          	lbu	a2,0(a3)
    80004978:	fd06071b          	addiw	a4,a2,-48
    8000497c:	0ff77713          	andi	a4,a4,255
    80004980:	00900793          	li	a5,9
    80004984:	02e7e063          	bltu	a5,a4,800049a4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004988:	0025179b          	slliw	a5,a0,0x2
    8000498c:	00a787bb          	addw	a5,a5,a0
    80004990:	0017979b          	slliw	a5,a5,0x1
    80004994:	00168693          	addi	a3,a3,1
    80004998:	00c787bb          	addw	a5,a5,a2
    8000499c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800049a0:	fd5ff06f          	j	80004974 <_Z11stringToIntPKc+0x14>
    return n;
}
    800049a4:	00813403          	ld	s0,8(sp)
    800049a8:	01010113          	addi	sp,sp,16
    800049ac:	00008067          	ret

00000000800049b0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800049b0:	fc010113          	addi	sp,sp,-64
    800049b4:	02113c23          	sd	ra,56(sp)
    800049b8:	02813823          	sd	s0,48(sp)
    800049bc:	02913423          	sd	s1,40(sp)
    800049c0:	03213023          	sd	s2,32(sp)
    800049c4:	01313c23          	sd	s3,24(sp)
    800049c8:	04010413          	addi	s0,sp,64
    800049cc:	00050493          	mv	s1,a0
    800049d0:	00058913          	mv	s2,a1
    800049d4:	00060993          	mv	s3,a2
    LOCK();
    800049d8:	00100613          	li	a2,1
    800049dc:	00000593          	li	a1,0
    800049e0:	0000a517          	auipc	a0,0xa
    800049e4:	b8050513          	addi	a0,a0,-1152 # 8000e560 <lockPrint>
    800049e8:	ffffd097          	auipc	ra,0xffffd
    800049ec:	830080e7          	jalr	-2000(ra) # 80001218 <copy_and_swap>
    800049f0:	fe0514e3          	bnez	a0,800049d8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800049f4:	00098463          	beqz	s3,800049fc <_Z8printIntiii+0x4c>
    800049f8:	0804c463          	bltz	s1,80004a80 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800049fc:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004a00:	00000593          	li	a1,0
    }

    i = 0;
    80004a04:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004a08:	0009079b          	sext.w	a5,s2
    80004a0c:	0325773b          	remuw	a4,a0,s2
    80004a10:	00048613          	mv	a2,s1
    80004a14:	0014849b          	addiw	s1,s1,1
    80004a18:	02071693          	slli	a3,a4,0x20
    80004a1c:	0206d693          	srli	a3,a3,0x20
    80004a20:	00006717          	auipc	a4,0x6
    80004a24:	9a070713          	addi	a4,a4,-1632 # 8000a3c0 <digits>
    80004a28:	00d70733          	add	a4,a4,a3
    80004a2c:	00074683          	lbu	a3,0(a4)
    80004a30:	fd040713          	addi	a4,s0,-48
    80004a34:	00c70733          	add	a4,a4,a2
    80004a38:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004a3c:	0005071b          	sext.w	a4,a0
    80004a40:	0325553b          	divuw	a0,a0,s2
    80004a44:	fcf772e3          	bgeu	a4,a5,80004a08 <_Z8printIntiii+0x58>
    if(neg)
    80004a48:	00058c63          	beqz	a1,80004a60 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80004a4c:	fd040793          	addi	a5,s0,-48
    80004a50:	009784b3          	add	s1,a5,s1
    80004a54:	02d00793          	li	a5,45
    80004a58:	fef48823          	sb	a5,-16(s1)
    80004a5c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004a60:	fff4849b          	addiw	s1,s1,-1
    80004a64:	0204c463          	bltz	s1,80004a8c <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80004a68:	fd040793          	addi	a5,s0,-48
    80004a6c:	009787b3          	add	a5,a5,s1
    80004a70:	ff07c503          	lbu	a0,-16(a5)
    80004a74:	ffffd097          	auipc	ra,0xffffd
    80004a78:	494080e7          	jalr	1172(ra) # 80001f08 <_Z4putcc>
    80004a7c:	fe5ff06f          	j	80004a60 <_Z8printIntiii+0xb0>
        x = -xx;
    80004a80:	4090053b          	negw	a0,s1
        neg = 1;
    80004a84:	00100593          	li	a1,1
        x = -xx;
    80004a88:	f7dff06f          	j	80004a04 <_Z8printIntiii+0x54>

    UNLOCK();
    80004a8c:	00000613          	li	a2,0
    80004a90:	00100593          	li	a1,1
    80004a94:	0000a517          	auipc	a0,0xa
    80004a98:	acc50513          	addi	a0,a0,-1332 # 8000e560 <lockPrint>
    80004a9c:	ffffc097          	auipc	ra,0xffffc
    80004aa0:	77c080e7          	jalr	1916(ra) # 80001218 <copy_and_swap>
    80004aa4:	fe0514e3          	bnez	a0,80004a8c <_Z8printIntiii+0xdc>
}
    80004aa8:	03813083          	ld	ra,56(sp)
    80004aac:	03013403          	ld	s0,48(sp)
    80004ab0:	02813483          	ld	s1,40(sp)
    80004ab4:	02013903          	ld	s2,32(sp)
    80004ab8:	01813983          	ld	s3,24(sp)
    80004abc:	04010113          	addi	sp,sp,64
    80004ac0:	00008067          	ret

0000000080004ac4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004ac4:	fd010113          	addi	sp,sp,-48
    80004ac8:	02113423          	sd	ra,40(sp)
    80004acc:	02813023          	sd	s0,32(sp)
    80004ad0:	00913c23          	sd	s1,24(sp)
    80004ad4:	01213823          	sd	s2,16(sp)
    80004ad8:	01313423          	sd	s3,8(sp)
    80004adc:	03010413          	addi	s0,sp,48
    80004ae0:	00050493          	mv	s1,a0
    80004ae4:	00058913          	mv	s2,a1
    80004ae8:	0015879b          	addiw	a5,a1,1
    80004aec:	0007851b          	sext.w	a0,a5
    80004af0:	00f4a023          	sw	a5,0(s1)
    80004af4:	0004a823          	sw	zero,16(s1)
    80004af8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004afc:	00251513          	slli	a0,a0,0x2
    80004b00:	ffffd097          	auipc	ra,0xffffd
    80004b04:	128080e7          	jalr	296(ra) # 80001c28 <_Z9mem_allocm>
    80004b08:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004b0c:	01000513          	li	a0,16
    80004b10:	fffff097          	auipc	ra,0xfffff
    80004b14:	a5c080e7          	jalr	-1444(ra) # 8000356c <_Znwm>
    80004b18:	00050993          	mv	s3,a0
    80004b1c:	00000593          	li	a1,0
    80004b20:	fffff097          	auipc	ra,0xfffff
    80004b24:	ca0080e7          	jalr	-864(ra) # 800037c0 <_ZN9SemaphoreC1Ej>
    80004b28:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004b2c:	01000513          	li	a0,16
    80004b30:	fffff097          	auipc	ra,0xfffff
    80004b34:	a3c080e7          	jalr	-1476(ra) # 8000356c <_Znwm>
    80004b38:	00050993          	mv	s3,a0
    80004b3c:	00090593          	mv	a1,s2
    80004b40:	fffff097          	auipc	ra,0xfffff
    80004b44:	c80080e7          	jalr	-896(ra) # 800037c0 <_ZN9SemaphoreC1Ej>
    80004b48:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004b4c:	01000513          	li	a0,16
    80004b50:	fffff097          	auipc	ra,0xfffff
    80004b54:	a1c080e7          	jalr	-1508(ra) # 8000356c <_Znwm>
    80004b58:	00050913          	mv	s2,a0
    80004b5c:	00100593          	li	a1,1
    80004b60:	fffff097          	auipc	ra,0xfffff
    80004b64:	c60080e7          	jalr	-928(ra) # 800037c0 <_ZN9SemaphoreC1Ej>
    80004b68:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004b6c:	01000513          	li	a0,16
    80004b70:	fffff097          	auipc	ra,0xfffff
    80004b74:	9fc080e7          	jalr	-1540(ra) # 8000356c <_Znwm>
    80004b78:	00050913          	mv	s2,a0
    80004b7c:	00100593          	li	a1,1
    80004b80:	fffff097          	auipc	ra,0xfffff
    80004b84:	c40080e7          	jalr	-960(ra) # 800037c0 <_ZN9SemaphoreC1Ej>
    80004b88:	0324b823          	sd	s2,48(s1)
}
    80004b8c:	02813083          	ld	ra,40(sp)
    80004b90:	02013403          	ld	s0,32(sp)
    80004b94:	01813483          	ld	s1,24(sp)
    80004b98:	01013903          	ld	s2,16(sp)
    80004b9c:	00813983          	ld	s3,8(sp)
    80004ba0:	03010113          	addi	sp,sp,48
    80004ba4:	00008067          	ret
    80004ba8:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004bac:	00098513          	mv	a0,s3
    80004bb0:	fffff097          	auipc	ra,0xfffff
    80004bb4:	9e4080e7          	jalr	-1564(ra) # 80003594 <_ZdlPv>
    80004bb8:	00048513          	mv	a0,s1
    80004bbc:	0000b097          	auipc	ra,0xb
    80004bc0:	a7c080e7          	jalr	-1412(ra) # 8000f638 <_Unwind_Resume>
    80004bc4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004bc8:	00098513          	mv	a0,s3
    80004bcc:	fffff097          	auipc	ra,0xfffff
    80004bd0:	9c8080e7          	jalr	-1592(ra) # 80003594 <_ZdlPv>
    80004bd4:	00048513          	mv	a0,s1
    80004bd8:	0000b097          	auipc	ra,0xb
    80004bdc:	a60080e7          	jalr	-1440(ra) # 8000f638 <_Unwind_Resume>
    80004be0:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004be4:	00090513          	mv	a0,s2
    80004be8:	fffff097          	auipc	ra,0xfffff
    80004bec:	9ac080e7          	jalr	-1620(ra) # 80003594 <_ZdlPv>
    80004bf0:	00048513          	mv	a0,s1
    80004bf4:	0000b097          	auipc	ra,0xb
    80004bf8:	a44080e7          	jalr	-1468(ra) # 8000f638 <_Unwind_Resume>
    80004bfc:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004c00:	00090513          	mv	a0,s2
    80004c04:	fffff097          	auipc	ra,0xfffff
    80004c08:	990080e7          	jalr	-1648(ra) # 80003594 <_ZdlPv>
    80004c0c:	00048513          	mv	a0,s1
    80004c10:	0000b097          	auipc	ra,0xb
    80004c14:	a28080e7          	jalr	-1496(ra) # 8000f638 <_Unwind_Resume>

0000000080004c18 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004c18:	fe010113          	addi	sp,sp,-32
    80004c1c:	00113c23          	sd	ra,24(sp)
    80004c20:	00813823          	sd	s0,16(sp)
    80004c24:	00913423          	sd	s1,8(sp)
    80004c28:	01213023          	sd	s2,0(sp)
    80004c2c:	02010413          	addi	s0,sp,32
    80004c30:	00050493          	mv	s1,a0
    80004c34:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004c38:	01853503          	ld	a0,24(a0)
    80004c3c:	fffff097          	auipc	ra,0xfffff
    80004c40:	b4c080e7          	jalr	-1204(ra) # 80003788 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004c44:	0304b503          	ld	a0,48(s1)
    80004c48:	fffff097          	auipc	ra,0xfffff
    80004c4c:	b40080e7          	jalr	-1216(ra) # 80003788 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004c50:	0084b783          	ld	a5,8(s1)
    80004c54:	0144a703          	lw	a4,20(s1)
    80004c58:	00271713          	slli	a4,a4,0x2
    80004c5c:	00e787b3          	add	a5,a5,a4
    80004c60:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004c64:	0144a783          	lw	a5,20(s1)
    80004c68:	0017879b          	addiw	a5,a5,1
    80004c6c:	0004a703          	lw	a4,0(s1)
    80004c70:	02e7e7bb          	remw	a5,a5,a4
    80004c74:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004c78:	0304b503          	ld	a0,48(s1)
    80004c7c:	fffff097          	auipc	ra,0xfffff
    80004c80:	b90080e7          	jalr	-1136(ra) # 8000380c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004c84:	0204b503          	ld	a0,32(s1)
    80004c88:	fffff097          	auipc	ra,0xfffff
    80004c8c:	b84080e7          	jalr	-1148(ra) # 8000380c <_ZN9Semaphore6signalEv>

}
    80004c90:	01813083          	ld	ra,24(sp)
    80004c94:	01013403          	ld	s0,16(sp)
    80004c98:	00813483          	ld	s1,8(sp)
    80004c9c:	00013903          	ld	s2,0(sp)
    80004ca0:	02010113          	addi	sp,sp,32
    80004ca4:	00008067          	ret

0000000080004ca8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004ca8:	fe010113          	addi	sp,sp,-32
    80004cac:	00113c23          	sd	ra,24(sp)
    80004cb0:	00813823          	sd	s0,16(sp)
    80004cb4:	00913423          	sd	s1,8(sp)
    80004cb8:	01213023          	sd	s2,0(sp)
    80004cbc:	02010413          	addi	s0,sp,32
    80004cc0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004cc4:	02053503          	ld	a0,32(a0)
    80004cc8:	fffff097          	auipc	ra,0xfffff
    80004ccc:	ac0080e7          	jalr	-1344(ra) # 80003788 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004cd0:	0284b503          	ld	a0,40(s1)
    80004cd4:	fffff097          	auipc	ra,0xfffff
    80004cd8:	ab4080e7          	jalr	-1356(ra) # 80003788 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004cdc:	0084b703          	ld	a4,8(s1)
    80004ce0:	0104a783          	lw	a5,16(s1)
    80004ce4:	00279693          	slli	a3,a5,0x2
    80004ce8:	00d70733          	add	a4,a4,a3
    80004cec:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004cf0:	0017879b          	addiw	a5,a5,1
    80004cf4:	0004a703          	lw	a4,0(s1)
    80004cf8:	02e7e7bb          	remw	a5,a5,a4
    80004cfc:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004d00:	0284b503          	ld	a0,40(s1)
    80004d04:	fffff097          	auipc	ra,0xfffff
    80004d08:	b08080e7          	jalr	-1272(ra) # 8000380c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004d0c:	0184b503          	ld	a0,24(s1)
    80004d10:	fffff097          	auipc	ra,0xfffff
    80004d14:	afc080e7          	jalr	-1284(ra) # 8000380c <_ZN9Semaphore6signalEv>

    return ret;
}
    80004d18:	00090513          	mv	a0,s2
    80004d1c:	01813083          	ld	ra,24(sp)
    80004d20:	01013403          	ld	s0,16(sp)
    80004d24:	00813483          	ld	s1,8(sp)
    80004d28:	00013903          	ld	s2,0(sp)
    80004d2c:	02010113          	addi	sp,sp,32
    80004d30:	00008067          	ret

0000000080004d34 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004d34:	fe010113          	addi	sp,sp,-32
    80004d38:	00113c23          	sd	ra,24(sp)
    80004d3c:	00813823          	sd	s0,16(sp)
    80004d40:	00913423          	sd	s1,8(sp)
    80004d44:	01213023          	sd	s2,0(sp)
    80004d48:	02010413          	addi	s0,sp,32
    80004d4c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004d50:	02853503          	ld	a0,40(a0)
    80004d54:	fffff097          	auipc	ra,0xfffff
    80004d58:	a34080e7          	jalr	-1484(ra) # 80003788 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004d5c:	0304b503          	ld	a0,48(s1)
    80004d60:	fffff097          	auipc	ra,0xfffff
    80004d64:	a28080e7          	jalr	-1496(ra) # 80003788 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004d68:	0144a783          	lw	a5,20(s1)
    80004d6c:	0104a903          	lw	s2,16(s1)
    80004d70:	0327ce63          	blt	a5,s2,80004dac <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004d74:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004d78:	0304b503          	ld	a0,48(s1)
    80004d7c:	fffff097          	auipc	ra,0xfffff
    80004d80:	a90080e7          	jalr	-1392(ra) # 8000380c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004d84:	0284b503          	ld	a0,40(s1)
    80004d88:	fffff097          	auipc	ra,0xfffff
    80004d8c:	a84080e7          	jalr	-1404(ra) # 8000380c <_ZN9Semaphore6signalEv>

    return ret;
}
    80004d90:	00090513          	mv	a0,s2
    80004d94:	01813083          	ld	ra,24(sp)
    80004d98:	01013403          	ld	s0,16(sp)
    80004d9c:	00813483          	ld	s1,8(sp)
    80004da0:	00013903          	ld	s2,0(sp)
    80004da4:	02010113          	addi	sp,sp,32
    80004da8:	00008067          	ret
        ret = cap - head + tail;
    80004dac:	0004a703          	lw	a4,0(s1)
    80004db0:	4127093b          	subw	s2,a4,s2
    80004db4:	00f9093b          	addw	s2,s2,a5
    80004db8:	fc1ff06f          	j	80004d78 <_ZN9BufferCPP6getCntEv+0x44>

0000000080004dbc <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004dbc:	fe010113          	addi	sp,sp,-32
    80004dc0:	00113c23          	sd	ra,24(sp)
    80004dc4:	00813823          	sd	s0,16(sp)
    80004dc8:	00913423          	sd	s1,8(sp)
    80004dcc:	02010413          	addi	s0,sp,32
    80004dd0:	00050493          	mv	s1,a0
    Console::putc('\n');
    80004dd4:	00a00513          	li	a0,10
    80004dd8:	fffff097          	auipc	ra,0xfffff
    80004ddc:	a94080e7          	jalr	-1388(ra) # 8000386c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80004de0:	00003517          	auipc	a0,0x3
    80004de4:	54850513          	addi	a0,a0,1352 # 80008328 <CONSOLE_STATUS+0x318>
    80004de8:	00000097          	auipc	ra,0x0
    80004dec:	a30080e7          	jalr	-1488(ra) # 80004818 <_Z11printStringPKc>
    while (getCnt()) {
    80004df0:	00048513          	mv	a0,s1
    80004df4:	00000097          	auipc	ra,0x0
    80004df8:	f40080e7          	jalr	-192(ra) # 80004d34 <_ZN9BufferCPP6getCntEv>
    80004dfc:	02050c63          	beqz	a0,80004e34 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80004e00:	0084b783          	ld	a5,8(s1)
    80004e04:	0104a703          	lw	a4,16(s1)
    80004e08:	00271713          	slli	a4,a4,0x2
    80004e0c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80004e10:	0007c503          	lbu	a0,0(a5)
    80004e14:	fffff097          	auipc	ra,0xfffff
    80004e18:	a58080e7          	jalr	-1448(ra) # 8000386c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80004e1c:	0104a783          	lw	a5,16(s1)
    80004e20:	0017879b          	addiw	a5,a5,1
    80004e24:	0004a703          	lw	a4,0(s1)
    80004e28:	02e7e7bb          	remw	a5,a5,a4
    80004e2c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80004e30:	fc1ff06f          	j	80004df0 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80004e34:	02100513          	li	a0,33
    80004e38:	fffff097          	auipc	ra,0xfffff
    80004e3c:	a34080e7          	jalr	-1484(ra) # 8000386c <_ZN7Console4putcEc>
    Console::putc('\n');
    80004e40:	00a00513          	li	a0,10
    80004e44:	fffff097          	auipc	ra,0xfffff
    80004e48:	a28080e7          	jalr	-1496(ra) # 8000386c <_ZN7Console4putcEc>
    mem_free(buffer);
    80004e4c:	0084b503          	ld	a0,8(s1)
    80004e50:	ffffd097          	auipc	ra,0xffffd
    80004e54:	e08080e7          	jalr	-504(ra) # 80001c58 <_Z8mem_freePv>
    delete itemAvailable;
    80004e58:	0204b503          	ld	a0,32(s1)
    80004e5c:	00050863          	beqz	a0,80004e6c <_ZN9BufferCPPD1Ev+0xb0>
    80004e60:	00053783          	ld	a5,0(a0)
    80004e64:	0087b783          	ld	a5,8(a5)
    80004e68:	000780e7          	jalr	a5
    delete spaceAvailable;
    80004e6c:	0184b503          	ld	a0,24(s1)
    80004e70:	00050863          	beqz	a0,80004e80 <_ZN9BufferCPPD1Ev+0xc4>
    80004e74:	00053783          	ld	a5,0(a0)
    80004e78:	0087b783          	ld	a5,8(a5)
    80004e7c:	000780e7          	jalr	a5
    delete mutexTail;
    80004e80:	0304b503          	ld	a0,48(s1)
    80004e84:	00050863          	beqz	a0,80004e94 <_ZN9BufferCPPD1Ev+0xd8>
    80004e88:	00053783          	ld	a5,0(a0)
    80004e8c:	0087b783          	ld	a5,8(a5)
    80004e90:	000780e7          	jalr	a5
    delete mutexHead;
    80004e94:	0284b503          	ld	a0,40(s1)
    80004e98:	00050863          	beqz	a0,80004ea8 <_ZN9BufferCPPD1Ev+0xec>
    80004e9c:	00053783          	ld	a5,0(a0)
    80004ea0:	0087b783          	ld	a5,8(a5)
    80004ea4:	000780e7          	jalr	a5
}
    80004ea8:	01813083          	ld	ra,24(sp)
    80004eac:	01013403          	ld	s0,16(sp)
    80004eb0:	00813483          	ld	s1,8(sp)
    80004eb4:	02010113          	addi	sp,sp,32
    80004eb8:	00008067          	ret

0000000080004ebc <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80004ebc:	fe010113          	addi	sp,sp,-32
    80004ec0:	00113c23          	sd	ra,24(sp)
    80004ec4:	00813823          	sd	s0,16(sp)
    80004ec8:	00913423          	sd	s1,8(sp)
    80004ecc:	01213023          	sd	s2,0(sp)
    80004ed0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004ed4:	00000913          	li	s2,0
    80004ed8:	0380006f          	j	80004f10 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004edc:	ffffd097          	auipc	ra,0xffffd
    80004ee0:	e28080e7          	jalr	-472(ra) # 80001d04 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004ee4:	00148493          	addi	s1,s1,1
    80004ee8:	000027b7          	lui	a5,0x2
    80004eec:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004ef0:	0097ee63          	bltu	a5,s1,80004f0c <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004ef4:	00000713          	li	a4,0
    80004ef8:	000077b7          	lui	a5,0x7
    80004efc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004f00:	fce7eee3          	bltu	a5,a4,80004edc <_Z11workerBodyAPv+0x20>
    80004f04:	00170713          	addi	a4,a4,1
    80004f08:	ff1ff06f          	j	80004ef8 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004f0c:	00190913          	addi	s2,s2,1
    80004f10:	00900793          	li	a5,9
    80004f14:	0527e063          	bltu	a5,s2,80004f54 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004f18:	00003517          	auipc	a0,0x3
    80004f1c:	42850513          	addi	a0,a0,1064 # 80008340 <CONSOLE_STATUS+0x330>
    80004f20:	00000097          	auipc	ra,0x0
    80004f24:	8f8080e7          	jalr	-1800(ra) # 80004818 <_Z11printStringPKc>
    80004f28:	00000613          	li	a2,0
    80004f2c:	00a00593          	li	a1,10
    80004f30:	0009051b          	sext.w	a0,s2
    80004f34:	00000097          	auipc	ra,0x0
    80004f38:	a7c080e7          	jalr	-1412(ra) # 800049b0 <_Z8printIntiii>
    80004f3c:	00003517          	auipc	a0,0x3
    80004f40:	60c50513          	addi	a0,a0,1548 # 80008548 <CONSOLE_STATUS+0x538>
    80004f44:	00000097          	auipc	ra,0x0
    80004f48:	8d4080e7          	jalr	-1836(ra) # 80004818 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004f4c:	00000493          	li	s1,0
    80004f50:	f99ff06f          	j	80004ee8 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004f54:	00003517          	auipc	a0,0x3
    80004f58:	3f450513          	addi	a0,a0,1012 # 80008348 <CONSOLE_STATUS+0x338>
    80004f5c:	00000097          	auipc	ra,0x0
    80004f60:	8bc080e7          	jalr	-1860(ra) # 80004818 <_Z11printStringPKc>
    finishedA = true;
    80004f64:	00100793          	li	a5,1
    80004f68:	00009717          	auipc	a4,0x9
    80004f6c:	60f70023          	sb	a5,1536(a4) # 8000e568 <finishedA>
}
    80004f70:	01813083          	ld	ra,24(sp)
    80004f74:	01013403          	ld	s0,16(sp)
    80004f78:	00813483          	ld	s1,8(sp)
    80004f7c:	00013903          	ld	s2,0(sp)
    80004f80:	02010113          	addi	sp,sp,32
    80004f84:	00008067          	ret

0000000080004f88 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80004f88:	fe010113          	addi	sp,sp,-32
    80004f8c:	00113c23          	sd	ra,24(sp)
    80004f90:	00813823          	sd	s0,16(sp)
    80004f94:	00913423          	sd	s1,8(sp)
    80004f98:	01213023          	sd	s2,0(sp)
    80004f9c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004fa0:	00000913          	li	s2,0
    80004fa4:	0380006f          	j	80004fdc <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004fa8:	ffffd097          	auipc	ra,0xffffd
    80004fac:	d5c080e7          	jalr	-676(ra) # 80001d04 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004fb0:	00148493          	addi	s1,s1,1
    80004fb4:	000027b7          	lui	a5,0x2
    80004fb8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004fbc:	0097ee63          	bltu	a5,s1,80004fd8 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004fc0:	00000713          	li	a4,0
    80004fc4:	000077b7          	lui	a5,0x7
    80004fc8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004fcc:	fce7eee3          	bltu	a5,a4,80004fa8 <_Z11workerBodyBPv+0x20>
    80004fd0:	00170713          	addi	a4,a4,1
    80004fd4:	ff1ff06f          	j	80004fc4 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004fd8:	00190913          	addi	s2,s2,1
    80004fdc:	00f00793          	li	a5,15
    80004fe0:	0527e063          	bltu	a5,s2,80005020 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004fe4:	00003517          	auipc	a0,0x3
    80004fe8:	37450513          	addi	a0,a0,884 # 80008358 <CONSOLE_STATUS+0x348>
    80004fec:	00000097          	auipc	ra,0x0
    80004ff0:	82c080e7          	jalr	-2004(ra) # 80004818 <_Z11printStringPKc>
    80004ff4:	00000613          	li	a2,0
    80004ff8:	00a00593          	li	a1,10
    80004ffc:	0009051b          	sext.w	a0,s2
    80005000:	00000097          	auipc	ra,0x0
    80005004:	9b0080e7          	jalr	-1616(ra) # 800049b0 <_Z8printIntiii>
    80005008:	00003517          	auipc	a0,0x3
    8000500c:	54050513          	addi	a0,a0,1344 # 80008548 <CONSOLE_STATUS+0x538>
    80005010:	00000097          	auipc	ra,0x0
    80005014:	808080e7          	jalr	-2040(ra) # 80004818 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005018:	00000493          	li	s1,0
    8000501c:	f99ff06f          	j	80004fb4 <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    80005020:	ffffd097          	auipc	ra,0xffffd
    80005024:	ce4080e7          	jalr	-796(ra) # 80001d04 <_Z15thread_dispatchv>
    printString("B finished!\n");
    80005028:	00003517          	auipc	a0,0x3
    8000502c:	33850513          	addi	a0,a0,824 # 80008360 <CONSOLE_STATUS+0x350>
    80005030:	fffff097          	auipc	ra,0xfffff
    80005034:	7e8080e7          	jalr	2024(ra) # 80004818 <_Z11printStringPKc>
    finishedB = true;
    80005038:	00100793          	li	a5,1
    8000503c:	00009717          	auipc	a4,0x9
    80005040:	52f706a3          	sb	a5,1325(a4) # 8000e569 <finishedB>
}
    80005044:	01813083          	ld	ra,24(sp)
    80005048:	01013403          	ld	s0,16(sp)
    8000504c:	00813483          	ld	s1,8(sp)
    80005050:	00013903          	ld	s2,0(sp)
    80005054:	02010113          	addi	sp,sp,32
    80005058:	00008067          	ret

000000008000505c <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    8000505c:	fe010113          	addi	sp,sp,-32
    80005060:	00113c23          	sd	ra,24(sp)
    80005064:	00813823          	sd	s0,16(sp)
    80005068:	00913423          	sd	s1,8(sp)
    8000506c:	01213023          	sd	s2,0(sp)
    80005070:	02010413          	addi	s0,sp,32
    80005074:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005078:	00100793          	li	a5,1
    8000507c:	02a7f863          	bgeu	a5,a0,800050ac <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005080:	00a00793          	li	a5,10
    80005084:	02f577b3          	remu	a5,a0,a5
    80005088:	02078e63          	beqz	a5,800050c4 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000508c:	fff48513          	addi	a0,s1,-1
    80005090:	00000097          	auipc	ra,0x0
    80005094:	fcc080e7          	jalr	-52(ra) # 8000505c <_Z9fibonaccim>
    80005098:	00050913          	mv	s2,a0
    8000509c:	ffe48513          	addi	a0,s1,-2
    800050a0:	00000097          	auipc	ra,0x0
    800050a4:	fbc080e7          	jalr	-68(ra) # 8000505c <_Z9fibonaccim>
    800050a8:	00a90533          	add	a0,s2,a0
}
    800050ac:	01813083          	ld	ra,24(sp)
    800050b0:	01013403          	ld	s0,16(sp)
    800050b4:	00813483          	ld	s1,8(sp)
    800050b8:	00013903          	ld	s2,0(sp)
    800050bc:	02010113          	addi	sp,sp,32
    800050c0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800050c4:	ffffd097          	auipc	ra,0xffffd
    800050c8:	c40080e7          	jalr	-960(ra) # 80001d04 <_Z15thread_dispatchv>
    800050cc:	fc1ff06f          	j	8000508c <_Z9fibonaccim+0x30>

00000000800050d0 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    800050d0:	fe010113          	addi	sp,sp,-32
    800050d4:	00113c23          	sd	ra,24(sp)
    800050d8:	00813823          	sd	s0,16(sp)
    800050dc:	00913423          	sd	s1,8(sp)
    800050e0:	01213023          	sd	s2,0(sp)
    800050e4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800050e8:	00000493          	li	s1,0
    800050ec:	0400006f          	j	8000512c <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800050f0:	00003517          	auipc	a0,0x3
    800050f4:	28050513          	addi	a0,a0,640 # 80008370 <CONSOLE_STATUS+0x360>
    800050f8:	fffff097          	auipc	ra,0xfffff
    800050fc:	720080e7          	jalr	1824(ra) # 80004818 <_Z11printStringPKc>
    80005100:	00000613          	li	a2,0
    80005104:	00a00593          	li	a1,10
    80005108:	00048513          	mv	a0,s1
    8000510c:	00000097          	auipc	ra,0x0
    80005110:	8a4080e7          	jalr	-1884(ra) # 800049b0 <_Z8printIntiii>
    80005114:	00003517          	auipc	a0,0x3
    80005118:	43450513          	addi	a0,a0,1076 # 80008548 <CONSOLE_STATUS+0x538>
    8000511c:	fffff097          	auipc	ra,0xfffff
    80005120:	6fc080e7          	jalr	1788(ra) # 80004818 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005124:	0014849b          	addiw	s1,s1,1
    80005128:	0ff4f493          	andi	s1,s1,255
    8000512c:	00200793          	li	a5,2
    80005130:	fc97f0e3          	bgeu	a5,s1,800050f0 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005134:	00003517          	auipc	a0,0x3
    80005138:	24450513          	addi	a0,a0,580 # 80008378 <CONSOLE_STATUS+0x368>
    8000513c:	fffff097          	auipc	ra,0xfffff
    80005140:	6dc080e7          	jalr	1756(ra) # 80004818 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005144:	00700313          	li	t1,7
    thread_dispatch();
    80005148:	ffffd097          	auipc	ra,0xffffd
    8000514c:	bbc080e7          	jalr	-1092(ra) # 80001d04 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005150:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005154:	00003517          	auipc	a0,0x3
    80005158:	23450513          	addi	a0,a0,564 # 80008388 <CONSOLE_STATUS+0x378>
    8000515c:	fffff097          	auipc	ra,0xfffff
    80005160:	6bc080e7          	jalr	1724(ra) # 80004818 <_Z11printStringPKc>
    80005164:	00000613          	li	a2,0
    80005168:	00a00593          	li	a1,10
    8000516c:	0009051b          	sext.w	a0,s2
    80005170:	00000097          	auipc	ra,0x0
    80005174:	840080e7          	jalr	-1984(ra) # 800049b0 <_Z8printIntiii>
    80005178:	00003517          	auipc	a0,0x3
    8000517c:	3d050513          	addi	a0,a0,976 # 80008548 <CONSOLE_STATUS+0x538>
    80005180:	fffff097          	auipc	ra,0xfffff
    80005184:	698080e7          	jalr	1688(ra) # 80004818 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005188:	00c00513          	li	a0,12
    8000518c:	00000097          	auipc	ra,0x0
    80005190:	ed0080e7          	jalr	-304(ra) # 8000505c <_Z9fibonaccim>
    80005194:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005198:	00003517          	auipc	a0,0x3
    8000519c:	1f850513          	addi	a0,a0,504 # 80008390 <CONSOLE_STATUS+0x380>
    800051a0:	fffff097          	auipc	ra,0xfffff
    800051a4:	678080e7          	jalr	1656(ra) # 80004818 <_Z11printStringPKc>
    800051a8:	00000613          	li	a2,0
    800051ac:	00a00593          	li	a1,10
    800051b0:	0009051b          	sext.w	a0,s2
    800051b4:	fffff097          	auipc	ra,0xfffff
    800051b8:	7fc080e7          	jalr	2044(ra) # 800049b0 <_Z8printIntiii>
    800051bc:	00003517          	auipc	a0,0x3
    800051c0:	38c50513          	addi	a0,a0,908 # 80008548 <CONSOLE_STATUS+0x538>
    800051c4:	fffff097          	auipc	ra,0xfffff
    800051c8:	654080e7          	jalr	1620(ra) # 80004818 <_Z11printStringPKc>
    800051cc:	0400006f          	j	8000520c <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800051d0:	00003517          	auipc	a0,0x3
    800051d4:	1a050513          	addi	a0,a0,416 # 80008370 <CONSOLE_STATUS+0x360>
    800051d8:	fffff097          	auipc	ra,0xfffff
    800051dc:	640080e7          	jalr	1600(ra) # 80004818 <_Z11printStringPKc>
    800051e0:	00000613          	li	a2,0
    800051e4:	00a00593          	li	a1,10
    800051e8:	00048513          	mv	a0,s1
    800051ec:	fffff097          	auipc	ra,0xfffff
    800051f0:	7c4080e7          	jalr	1988(ra) # 800049b0 <_Z8printIntiii>
    800051f4:	00003517          	auipc	a0,0x3
    800051f8:	35450513          	addi	a0,a0,852 # 80008548 <CONSOLE_STATUS+0x538>
    800051fc:	fffff097          	auipc	ra,0xfffff
    80005200:	61c080e7          	jalr	1564(ra) # 80004818 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005204:	0014849b          	addiw	s1,s1,1
    80005208:	0ff4f493          	andi	s1,s1,255
    8000520c:	00500793          	li	a5,5
    80005210:	fc97f0e3          	bgeu	a5,s1,800051d0 <_Z11workerBodyCPv+0x100>
    }

    thread_dispatch();
    80005214:	ffffd097          	auipc	ra,0xffffd
    80005218:	af0080e7          	jalr	-1296(ra) # 80001d04 <_Z15thread_dispatchv>
    printString("A finished!\n");
    8000521c:	00003517          	auipc	a0,0x3
    80005220:	12c50513          	addi	a0,a0,300 # 80008348 <CONSOLE_STATUS+0x338>
    80005224:	fffff097          	auipc	ra,0xfffff
    80005228:	5f4080e7          	jalr	1524(ra) # 80004818 <_Z11printStringPKc>
    finishedC = true;
    8000522c:	00100793          	li	a5,1
    80005230:	00009717          	auipc	a4,0x9
    80005234:	32f70d23          	sb	a5,826(a4) # 8000e56a <finishedC>
}
    80005238:	01813083          	ld	ra,24(sp)
    8000523c:	01013403          	ld	s0,16(sp)
    80005240:	00813483          	ld	s1,8(sp)
    80005244:	00013903          	ld	s2,0(sp)
    80005248:	02010113          	addi	sp,sp,32
    8000524c:	00008067          	ret

0000000080005250 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80005250:	fe010113          	addi	sp,sp,-32
    80005254:	00113c23          	sd	ra,24(sp)
    80005258:	00813823          	sd	s0,16(sp)
    8000525c:	00913423          	sd	s1,8(sp)
    80005260:	01213023          	sd	s2,0(sp)
    80005264:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005268:	00a00493          	li	s1,10
    8000526c:	0400006f          	j	800052ac <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005270:	00003517          	auipc	a0,0x3
    80005274:	13050513          	addi	a0,a0,304 # 800083a0 <CONSOLE_STATUS+0x390>
    80005278:	fffff097          	auipc	ra,0xfffff
    8000527c:	5a0080e7          	jalr	1440(ra) # 80004818 <_Z11printStringPKc>
    80005280:	00000613          	li	a2,0
    80005284:	00a00593          	li	a1,10
    80005288:	00048513          	mv	a0,s1
    8000528c:	fffff097          	auipc	ra,0xfffff
    80005290:	724080e7          	jalr	1828(ra) # 800049b0 <_Z8printIntiii>
    80005294:	00003517          	auipc	a0,0x3
    80005298:	2b450513          	addi	a0,a0,692 # 80008548 <CONSOLE_STATUS+0x538>
    8000529c:	fffff097          	auipc	ra,0xfffff
    800052a0:	57c080e7          	jalr	1404(ra) # 80004818 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800052a4:	0014849b          	addiw	s1,s1,1
    800052a8:	0ff4f493          	andi	s1,s1,255
    800052ac:	00c00793          	li	a5,12
    800052b0:	fc97f0e3          	bgeu	a5,s1,80005270 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800052b4:	00003517          	auipc	a0,0x3
    800052b8:	0f450513          	addi	a0,a0,244 # 800083a8 <CONSOLE_STATUS+0x398>
    800052bc:	fffff097          	auipc	ra,0xfffff
    800052c0:	55c080e7          	jalr	1372(ra) # 80004818 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800052c4:	00500313          	li	t1,5
    thread_dispatch();
    800052c8:	ffffd097          	auipc	ra,0xffffd
    800052cc:	a3c080e7          	jalr	-1476(ra) # 80001d04 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800052d0:	01000513          	li	a0,16
    800052d4:	00000097          	auipc	ra,0x0
    800052d8:	d88080e7          	jalr	-632(ra) # 8000505c <_Z9fibonaccim>
    800052dc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800052e0:	00003517          	auipc	a0,0x3
    800052e4:	0d850513          	addi	a0,a0,216 # 800083b8 <CONSOLE_STATUS+0x3a8>
    800052e8:	fffff097          	auipc	ra,0xfffff
    800052ec:	530080e7          	jalr	1328(ra) # 80004818 <_Z11printStringPKc>
    800052f0:	00000613          	li	a2,0
    800052f4:	00a00593          	li	a1,10
    800052f8:	0009051b          	sext.w	a0,s2
    800052fc:	fffff097          	auipc	ra,0xfffff
    80005300:	6b4080e7          	jalr	1716(ra) # 800049b0 <_Z8printIntiii>
    80005304:	00003517          	auipc	a0,0x3
    80005308:	24450513          	addi	a0,a0,580 # 80008548 <CONSOLE_STATUS+0x538>
    8000530c:	fffff097          	auipc	ra,0xfffff
    80005310:	50c080e7          	jalr	1292(ra) # 80004818 <_Z11printStringPKc>
    80005314:	0400006f          	j	80005354 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005318:	00003517          	auipc	a0,0x3
    8000531c:	08850513          	addi	a0,a0,136 # 800083a0 <CONSOLE_STATUS+0x390>
    80005320:	fffff097          	auipc	ra,0xfffff
    80005324:	4f8080e7          	jalr	1272(ra) # 80004818 <_Z11printStringPKc>
    80005328:	00000613          	li	a2,0
    8000532c:	00a00593          	li	a1,10
    80005330:	00048513          	mv	a0,s1
    80005334:	fffff097          	auipc	ra,0xfffff
    80005338:	67c080e7          	jalr	1660(ra) # 800049b0 <_Z8printIntiii>
    8000533c:	00003517          	auipc	a0,0x3
    80005340:	20c50513          	addi	a0,a0,524 # 80008548 <CONSOLE_STATUS+0x538>
    80005344:	fffff097          	auipc	ra,0xfffff
    80005348:	4d4080e7          	jalr	1236(ra) # 80004818 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000534c:	0014849b          	addiw	s1,s1,1
    80005350:	0ff4f493          	andi	s1,s1,255
    80005354:	00f00793          	li	a5,15
    80005358:	fc97f0e3          	bgeu	a5,s1,80005318 <_Z11workerBodyDPv+0xc8>
    }

    thread_dispatch();
    8000535c:	ffffd097          	auipc	ra,0xffffd
    80005360:	9a8080e7          	jalr	-1624(ra) # 80001d04 <_Z15thread_dispatchv>
    printString("D finished!\n");
    80005364:	00003517          	auipc	a0,0x3
    80005368:	06450513          	addi	a0,a0,100 # 800083c8 <CONSOLE_STATUS+0x3b8>
    8000536c:	fffff097          	auipc	ra,0xfffff
    80005370:	4ac080e7          	jalr	1196(ra) # 80004818 <_Z11printStringPKc>
    finishedD = true;
    80005374:	00100793          	li	a5,1
    80005378:	00009717          	auipc	a4,0x9
    8000537c:	1ef709a3          	sb	a5,499(a4) # 8000e56b <finishedD>
}
    80005380:	01813083          	ld	ra,24(sp)
    80005384:	01013403          	ld	s0,16(sp)
    80005388:	00813483          	ld	s1,8(sp)
    8000538c:	00013903          	ld	s2,0(sp)
    80005390:	02010113          	addi	sp,sp,32
    80005394:	00008067          	ret

0000000080005398 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005398:	fc010113          	addi	sp,sp,-64
    8000539c:	02113c23          	sd	ra,56(sp)
    800053a0:	02813823          	sd	s0,48(sp)
    800053a4:	02913423          	sd	s1,40(sp)
    800053a8:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800053ac:	00000613          	li	a2,0
    800053b0:	00000597          	auipc	a1,0x0
    800053b4:	b0c58593          	addi	a1,a1,-1268 # 80004ebc <_Z11workerBodyAPv>
    800053b8:	fc040513          	addi	a0,s0,-64
    800053bc:	ffffd097          	auipc	ra,0xffffd
    800053c0:	8c8080e7          	jalr	-1848(ra) # 80001c84 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800053c4:	00003517          	auipc	a0,0x3
    800053c8:	01450513          	addi	a0,a0,20 # 800083d8 <CONSOLE_STATUS+0x3c8>
    800053cc:	fffff097          	auipc	ra,0xfffff
    800053d0:	44c080e7          	jalr	1100(ra) # 80004818 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800053d4:	00000613          	li	a2,0
    800053d8:	00000597          	auipc	a1,0x0
    800053dc:	bb058593          	addi	a1,a1,-1104 # 80004f88 <_Z11workerBodyBPv>
    800053e0:	fc840513          	addi	a0,s0,-56
    800053e4:	ffffd097          	auipc	ra,0xffffd
    800053e8:	8a0080e7          	jalr	-1888(ra) # 80001c84 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800053ec:	00003517          	auipc	a0,0x3
    800053f0:	00450513          	addi	a0,a0,4 # 800083f0 <CONSOLE_STATUS+0x3e0>
    800053f4:	fffff097          	auipc	ra,0xfffff
    800053f8:	424080e7          	jalr	1060(ra) # 80004818 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800053fc:	00000613          	li	a2,0
    80005400:	00000597          	auipc	a1,0x0
    80005404:	cd058593          	addi	a1,a1,-816 # 800050d0 <_Z11workerBodyCPv>
    80005408:	fd040513          	addi	a0,s0,-48
    8000540c:	ffffd097          	auipc	ra,0xffffd
    80005410:	878080e7          	jalr	-1928(ra) # 80001c84 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80005414:	00003517          	auipc	a0,0x3
    80005418:	ff450513          	addi	a0,a0,-12 # 80008408 <CONSOLE_STATUS+0x3f8>
    8000541c:	fffff097          	auipc	ra,0xfffff
    80005420:	3fc080e7          	jalr	1020(ra) # 80004818 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005424:	00000613          	li	a2,0
    80005428:	00000597          	auipc	a1,0x0
    8000542c:	e2858593          	addi	a1,a1,-472 # 80005250 <_Z11workerBodyDPv>
    80005430:	fd840513          	addi	a0,s0,-40
    80005434:	ffffd097          	auipc	ra,0xffffd
    80005438:	850080e7          	jalr	-1968(ra) # 80001c84 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    8000543c:	00003517          	auipc	a0,0x3
    80005440:	fe450513          	addi	a0,a0,-28 # 80008420 <CONSOLE_STATUS+0x410>
    80005444:	fffff097          	auipc	ra,0xfffff
    80005448:	3d4080e7          	jalr	980(ra) # 80004818 <_Z11printStringPKc>
    8000544c:	00c0006f          	j	80005458 <_Z18Threads_C_API_testv+0xc0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005450:	ffffd097          	auipc	ra,0xffffd
    80005454:	8b4080e7          	jalr	-1868(ra) # 80001d04 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005458:	00009797          	auipc	a5,0x9
    8000545c:	1107c783          	lbu	a5,272(a5) # 8000e568 <finishedA>
    80005460:	fe0788e3          	beqz	a5,80005450 <_Z18Threads_C_API_testv+0xb8>
    80005464:	00009797          	auipc	a5,0x9
    80005468:	1057c783          	lbu	a5,261(a5) # 8000e569 <finishedB>
    8000546c:	fe0782e3          	beqz	a5,80005450 <_Z18Threads_C_API_testv+0xb8>
    80005470:	00009797          	auipc	a5,0x9
    80005474:	0fa7c783          	lbu	a5,250(a5) # 8000e56a <finishedC>
    80005478:	fc078ce3          	beqz	a5,80005450 <_Z18Threads_C_API_testv+0xb8>
    8000547c:	00009797          	auipc	a5,0x9
    80005480:	0ef7c783          	lbu	a5,239(a5) # 8000e56b <finishedD>
    80005484:	fc0786e3          	beqz	a5,80005450 <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) { delete thread; }
    80005488:	fc040493          	addi	s1,s0,-64
    8000548c:	0080006f          	j	80005494 <_Z18Threads_C_API_testv+0xfc>
    80005490:	00848493          	addi	s1,s1,8
    80005494:	fe040793          	addi	a5,s0,-32
    80005498:	00f48c63          	beq	s1,a5,800054b0 <_Z18Threads_C_API_testv+0x118>
    8000549c:	0004b503          	ld	a0,0(s1)
    800054a0:	fe0508e3          	beqz	a0,80005490 <_Z18Threads_C_API_testv+0xf8>
    800054a4:	ffffd097          	auipc	ra,0xffffd
    800054a8:	adc080e7          	jalr	-1316(ra) # 80001f80 <_ZN7_threaddlEPv>
    800054ac:	fe5ff06f          	j	80005490 <_Z18Threads_C_API_testv+0xf8>
}
    800054b0:	03813083          	ld	ra,56(sp)
    800054b4:	03013403          	ld	s0,48(sp)
    800054b8:	02813483          	ld	s1,40(sp)
    800054bc:	04010113          	addi	sp,sp,64
    800054c0:	00008067          	ret

00000000800054c4 <_Z8userMainv>:

//#include "ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain()
{
    800054c4:	ff010113          	addi	sp,sp,-16
    800054c8:	00113423          	sd	ra,8(sp)
    800054cc:	00813023          	sd	s0,0(sp)
    800054d0:	01010413          	addi	s0,sp,16
    //__asm__ volatile("csrr a0, sstatus"); // test for changing privilege

    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    800054d4:	00000097          	auipc	ra,0x0
    800054d8:	ec4080e7          	jalr	-316(ra) # 80005398 <_Z18Threads_C_API_testv>
    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    800054dc:	00813083          	ld	ra,8(sp)
    800054e0:	00013403          	ld	s0,0(sp)
    800054e4:	01010113          	addi	sp,sp,16
    800054e8:	00008067          	ret

00000000800054ec <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800054ec:	fe010113          	addi	sp,sp,-32
    800054f0:	00113c23          	sd	ra,24(sp)
    800054f4:	00813823          	sd	s0,16(sp)
    800054f8:	00913423          	sd	s1,8(sp)
    800054fc:	01213023          	sd	s2,0(sp)
    80005500:	02010413          	addi	s0,sp,32
    80005504:	00050493          	mv	s1,a0
    80005508:	00058913          	mv	s2,a1
    8000550c:	0015879b          	addiw	a5,a1,1
    80005510:	0007851b          	sext.w	a0,a5
    80005514:	00f4a023          	sw	a5,0(s1)
    80005518:	0004a823          	sw	zero,16(s1)
    8000551c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005520:	00251513          	slli	a0,a0,0x2
    80005524:	ffffc097          	auipc	ra,0xffffc
    80005528:	704080e7          	jalr	1796(ra) # 80001c28 <_Z9mem_allocm>
    8000552c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005530:	00000593          	li	a1,0
    80005534:	02048513          	addi	a0,s1,32
    80005538:	ffffd097          	auipc	ra,0xffffd
    8000553c:	814080e7          	jalr	-2028(ra) # 80001d4c <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80005540:	00090593          	mv	a1,s2
    80005544:	01848513          	addi	a0,s1,24
    80005548:	ffffd097          	auipc	ra,0xffffd
    8000554c:	804080e7          	jalr	-2044(ra) # 80001d4c <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80005550:	00100593          	li	a1,1
    80005554:	02848513          	addi	a0,s1,40
    80005558:	ffffc097          	auipc	ra,0xffffc
    8000555c:	7f4080e7          	jalr	2036(ra) # 80001d4c <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80005560:	00100593          	li	a1,1
    80005564:	03048513          	addi	a0,s1,48
    80005568:	ffffc097          	auipc	ra,0xffffc
    8000556c:	7e4080e7          	jalr	2020(ra) # 80001d4c <_Z8sem_openPP4_semj>
}
    80005570:	01813083          	ld	ra,24(sp)
    80005574:	01013403          	ld	s0,16(sp)
    80005578:	00813483          	ld	s1,8(sp)
    8000557c:	00013903          	ld	s2,0(sp)
    80005580:	02010113          	addi	sp,sp,32
    80005584:	00008067          	ret

0000000080005588 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005588:	fe010113          	addi	sp,sp,-32
    8000558c:	00113c23          	sd	ra,24(sp)
    80005590:	00813823          	sd	s0,16(sp)
    80005594:	00913423          	sd	s1,8(sp)
    80005598:	01213023          	sd	s2,0(sp)
    8000559c:	02010413          	addi	s0,sp,32
    800055a0:	00050493          	mv	s1,a0
    800055a4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800055a8:	01853503          	ld	a0,24(a0)
    800055ac:	ffffd097          	auipc	ra,0xffffd
    800055b0:	804080e7          	jalr	-2044(ra) # 80001db0 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800055b4:	0304b503          	ld	a0,48(s1)
    800055b8:	ffffc097          	auipc	ra,0xffffc
    800055bc:	7f8080e7          	jalr	2040(ra) # 80001db0 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800055c0:	0084b783          	ld	a5,8(s1)
    800055c4:	0144a703          	lw	a4,20(s1)
    800055c8:	00271713          	slli	a4,a4,0x2
    800055cc:	00e787b3          	add	a5,a5,a4
    800055d0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800055d4:	0144a783          	lw	a5,20(s1)
    800055d8:	0017879b          	addiw	a5,a5,1
    800055dc:	0004a703          	lw	a4,0(s1)
    800055e0:	02e7e7bb          	remw	a5,a5,a4
    800055e4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800055e8:	0304b503          	ld	a0,48(s1)
    800055ec:	ffffc097          	auipc	ra,0xffffc
    800055f0:	7f0080e7          	jalr	2032(ra) # 80001ddc <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    800055f4:	0204b503          	ld	a0,32(s1)
    800055f8:	ffffc097          	auipc	ra,0xffffc
    800055fc:	7e4080e7          	jalr	2020(ra) # 80001ddc <_Z10sem_signalP4_sem>

}
    80005600:	01813083          	ld	ra,24(sp)
    80005604:	01013403          	ld	s0,16(sp)
    80005608:	00813483          	ld	s1,8(sp)
    8000560c:	00013903          	ld	s2,0(sp)
    80005610:	02010113          	addi	sp,sp,32
    80005614:	00008067          	ret

0000000080005618 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005618:	fe010113          	addi	sp,sp,-32
    8000561c:	00113c23          	sd	ra,24(sp)
    80005620:	00813823          	sd	s0,16(sp)
    80005624:	00913423          	sd	s1,8(sp)
    80005628:	01213023          	sd	s2,0(sp)
    8000562c:	02010413          	addi	s0,sp,32
    80005630:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005634:	02053503          	ld	a0,32(a0)
    80005638:	ffffc097          	auipc	ra,0xffffc
    8000563c:	778080e7          	jalr	1912(ra) # 80001db0 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80005640:	0284b503          	ld	a0,40(s1)
    80005644:	ffffc097          	auipc	ra,0xffffc
    80005648:	76c080e7          	jalr	1900(ra) # 80001db0 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    8000564c:	0084b703          	ld	a4,8(s1)
    80005650:	0104a783          	lw	a5,16(s1)
    80005654:	00279693          	slli	a3,a5,0x2
    80005658:	00d70733          	add	a4,a4,a3
    8000565c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005660:	0017879b          	addiw	a5,a5,1
    80005664:	0004a703          	lw	a4,0(s1)
    80005668:	02e7e7bb          	remw	a5,a5,a4
    8000566c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005670:	0284b503          	ld	a0,40(s1)
    80005674:	ffffc097          	auipc	ra,0xffffc
    80005678:	768080e7          	jalr	1896(ra) # 80001ddc <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    8000567c:	0184b503          	ld	a0,24(s1)
    80005680:	ffffc097          	auipc	ra,0xffffc
    80005684:	75c080e7          	jalr	1884(ra) # 80001ddc <_Z10sem_signalP4_sem>

    return ret;
}
    80005688:	00090513          	mv	a0,s2
    8000568c:	01813083          	ld	ra,24(sp)
    80005690:	01013403          	ld	s0,16(sp)
    80005694:	00813483          	ld	s1,8(sp)
    80005698:	00013903          	ld	s2,0(sp)
    8000569c:	02010113          	addi	sp,sp,32
    800056a0:	00008067          	ret

00000000800056a4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800056a4:	fe010113          	addi	sp,sp,-32
    800056a8:	00113c23          	sd	ra,24(sp)
    800056ac:	00813823          	sd	s0,16(sp)
    800056b0:	00913423          	sd	s1,8(sp)
    800056b4:	01213023          	sd	s2,0(sp)
    800056b8:	02010413          	addi	s0,sp,32
    800056bc:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800056c0:	02853503          	ld	a0,40(a0)
    800056c4:	ffffc097          	auipc	ra,0xffffc
    800056c8:	6ec080e7          	jalr	1772(ra) # 80001db0 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    800056cc:	0304b503          	ld	a0,48(s1)
    800056d0:	ffffc097          	auipc	ra,0xffffc
    800056d4:	6e0080e7          	jalr	1760(ra) # 80001db0 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    800056d8:	0144a783          	lw	a5,20(s1)
    800056dc:	0104a903          	lw	s2,16(s1)
    800056e0:	0327ce63          	blt	a5,s2,8000571c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800056e4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800056e8:	0304b503          	ld	a0,48(s1)
    800056ec:	ffffc097          	auipc	ra,0xffffc
    800056f0:	6f0080e7          	jalr	1776(ra) # 80001ddc <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    800056f4:	0284b503          	ld	a0,40(s1)
    800056f8:	ffffc097          	auipc	ra,0xffffc
    800056fc:	6e4080e7          	jalr	1764(ra) # 80001ddc <_Z10sem_signalP4_sem>

    return ret;
    80005700:	00090513          	mv	a0,s2
    80005704:	01813083          	ld	ra,24(sp)
    80005708:	01013403          	ld	s0,16(sp)
    8000570c:	00813483          	ld	s1,8(sp)
    80005710:	00013903          	ld	s2,0(sp)
    80005714:	02010113          	addi	sp,sp,32
    80005718:	00008067          	ret
        ret = cap - head + tail;
    8000571c:	0004a703          	lw	a4,0(s1)
    80005720:	4127093b          	subw	s2,a4,s2
    80005724:	00f9093b          	addw	s2,s2,a5
    80005728:	fc1ff06f          	j	800056e8 <_ZN6Buffer6getCntEv+0x44>

000000008000572c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000572c:	fe010113          	addi	sp,sp,-32
    80005730:	00113c23          	sd	ra,24(sp)
    80005734:	00813823          	sd	s0,16(sp)
    80005738:	00913423          	sd	s1,8(sp)
    8000573c:	02010413          	addi	s0,sp,32
    80005740:	00050493          	mv	s1,a0
    putc('\n');
    80005744:	00a00513          	li	a0,10
    80005748:	ffffc097          	auipc	ra,0xffffc
    8000574c:	7c0080e7          	jalr	1984(ra) # 80001f08 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005750:	00003517          	auipc	a0,0x3
    80005754:	bd850513          	addi	a0,a0,-1064 # 80008328 <CONSOLE_STATUS+0x318>
    80005758:	fffff097          	auipc	ra,0xfffff
    8000575c:	0c0080e7          	jalr	192(ra) # 80004818 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005760:	00048513          	mv	a0,s1
    80005764:	00000097          	auipc	ra,0x0
    80005768:	f40080e7          	jalr	-192(ra) # 800056a4 <_ZN6Buffer6getCntEv>
    8000576c:	02a05c63          	blez	a0,800057a4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005770:	0084b783          	ld	a5,8(s1)
    80005774:	0104a703          	lw	a4,16(s1)
    80005778:	00271713          	slli	a4,a4,0x2
    8000577c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005780:	0007c503          	lbu	a0,0(a5)
    80005784:	ffffc097          	auipc	ra,0xffffc
    80005788:	784080e7          	jalr	1924(ra) # 80001f08 <_Z4putcc>
        head = (head + 1) % cap;
    8000578c:	0104a783          	lw	a5,16(s1)
    80005790:	0017879b          	addiw	a5,a5,1
    80005794:	0004a703          	lw	a4,0(s1)
    80005798:	02e7e7bb          	remw	a5,a5,a4
    8000579c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800057a0:	fc1ff06f          	j	80005760 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800057a4:	02100513          	li	a0,33
    800057a8:	ffffc097          	auipc	ra,0xffffc
    800057ac:	760080e7          	jalr	1888(ra) # 80001f08 <_Z4putcc>
    putc('\n');
    800057b0:	00a00513          	li	a0,10
    800057b4:	ffffc097          	auipc	ra,0xffffc
    800057b8:	754080e7          	jalr	1876(ra) # 80001f08 <_Z4putcc>
    mem_free(buffer);
    800057bc:	0084b503          	ld	a0,8(s1)
    800057c0:	ffffc097          	auipc	ra,0xffffc
    800057c4:	498080e7          	jalr	1176(ra) # 80001c58 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800057c8:	0204b503          	ld	a0,32(s1)
    800057cc:	ffffc097          	auipc	ra,0xffffc
    800057d0:	5b8080e7          	jalr	1464(ra) # 80001d84 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    800057d4:	0184b503          	ld	a0,24(s1)
    800057d8:	ffffc097          	auipc	ra,0xffffc
    800057dc:	5ac080e7          	jalr	1452(ra) # 80001d84 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    800057e0:	0304b503          	ld	a0,48(s1)
    800057e4:	ffffc097          	auipc	ra,0xffffc
    800057e8:	5a0080e7          	jalr	1440(ra) # 80001d84 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    800057ec:	0284b503          	ld	a0,40(s1)
    800057f0:	ffffc097          	auipc	ra,0xffffc
    800057f4:	594080e7          	jalr	1428(ra) # 80001d84 <_Z9sem_closeP4_sem>
}
    800057f8:	01813083          	ld	ra,24(sp)
    800057fc:	01013403          	ld	s0,16(sp)
    80005800:	00813483          	ld	s1,8(sp)
    80005804:	02010113          	addi	sp,sp,32
    80005808:	00008067          	ret

000000008000580c <start>:
    8000580c:	ff010113          	addi	sp,sp,-16
    80005810:	00813423          	sd	s0,8(sp)
    80005814:	01010413          	addi	s0,sp,16
    80005818:	300027f3          	csrr	a5,mstatus
    8000581c:	ffffe737          	lui	a4,0xffffe
    80005820:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffef02f>
    80005824:	00e7f7b3          	and	a5,a5,a4
    80005828:	00001737          	lui	a4,0x1
    8000582c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005830:	00e7e7b3          	or	a5,a5,a4
    80005834:	30079073          	csrw	mstatus,a5
    80005838:	00000797          	auipc	a5,0x0
    8000583c:	16078793          	addi	a5,a5,352 # 80005998 <system_main>
    80005840:	34179073          	csrw	mepc,a5
    80005844:	00000793          	li	a5,0
    80005848:	18079073          	csrw	satp,a5
    8000584c:	000107b7          	lui	a5,0x10
    80005850:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005854:	30279073          	csrw	medeleg,a5
    80005858:	30379073          	csrw	mideleg,a5
    8000585c:	104027f3          	csrr	a5,sie
    80005860:	2227e793          	ori	a5,a5,546
    80005864:	10479073          	csrw	sie,a5
    80005868:	fff00793          	li	a5,-1
    8000586c:	00a7d793          	srli	a5,a5,0xa
    80005870:	3b079073          	csrw	pmpaddr0,a5
    80005874:	00f00793          	li	a5,15
    80005878:	3a079073          	csrw	pmpcfg0,a5
    8000587c:	f14027f3          	csrr	a5,mhartid
    80005880:	0200c737          	lui	a4,0x200c
    80005884:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005888:	0007869b          	sext.w	a3,a5
    8000588c:	00269713          	slli	a4,a3,0x2
    80005890:	000f4637          	lui	a2,0xf4
    80005894:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005898:	00d70733          	add	a4,a4,a3
    8000589c:	0037979b          	slliw	a5,a5,0x3
    800058a0:	020046b7          	lui	a3,0x2004
    800058a4:	00d787b3          	add	a5,a5,a3
    800058a8:	00c585b3          	add	a1,a1,a2
    800058ac:	00371693          	slli	a3,a4,0x3
    800058b0:	00009717          	auipc	a4,0x9
    800058b4:	cc070713          	addi	a4,a4,-832 # 8000e570 <timer_scratch>
    800058b8:	00b7b023          	sd	a1,0(a5)
    800058bc:	00d70733          	add	a4,a4,a3
    800058c0:	00f73c23          	sd	a5,24(a4)
    800058c4:	02c73023          	sd	a2,32(a4)
    800058c8:	34071073          	csrw	mscratch,a4
    800058cc:	00000797          	auipc	a5,0x0
    800058d0:	6e478793          	addi	a5,a5,1764 # 80005fb0 <timervec>
    800058d4:	30579073          	csrw	mtvec,a5
    800058d8:	300027f3          	csrr	a5,mstatus
    800058dc:	0087e793          	ori	a5,a5,8
    800058e0:	30079073          	csrw	mstatus,a5
    800058e4:	304027f3          	csrr	a5,mie
    800058e8:	0807e793          	ori	a5,a5,128
    800058ec:	30479073          	csrw	mie,a5
    800058f0:	f14027f3          	csrr	a5,mhartid
    800058f4:	0007879b          	sext.w	a5,a5
    800058f8:	00078213          	mv	tp,a5
    800058fc:	30200073          	mret
    80005900:	00813403          	ld	s0,8(sp)
    80005904:	01010113          	addi	sp,sp,16
    80005908:	00008067          	ret

000000008000590c <timerinit>:
    8000590c:	ff010113          	addi	sp,sp,-16
    80005910:	00813423          	sd	s0,8(sp)
    80005914:	01010413          	addi	s0,sp,16
    80005918:	f14027f3          	csrr	a5,mhartid
    8000591c:	0200c737          	lui	a4,0x200c
    80005920:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005924:	0007869b          	sext.w	a3,a5
    80005928:	00269713          	slli	a4,a3,0x2
    8000592c:	000f4637          	lui	a2,0xf4
    80005930:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005934:	00d70733          	add	a4,a4,a3
    80005938:	0037979b          	slliw	a5,a5,0x3
    8000593c:	020046b7          	lui	a3,0x2004
    80005940:	00d787b3          	add	a5,a5,a3
    80005944:	00c585b3          	add	a1,a1,a2
    80005948:	00371693          	slli	a3,a4,0x3
    8000594c:	00009717          	auipc	a4,0x9
    80005950:	c2470713          	addi	a4,a4,-988 # 8000e570 <timer_scratch>
    80005954:	00b7b023          	sd	a1,0(a5)
    80005958:	00d70733          	add	a4,a4,a3
    8000595c:	00f73c23          	sd	a5,24(a4)
    80005960:	02c73023          	sd	a2,32(a4)
    80005964:	34071073          	csrw	mscratch,a4
    80005968:	00000797          	auipc	a5,0x0
    8000596c:	64878793          	addi	a5,a5,1608 # 80005fb0 <timervec>
    80005970:	30579073          	csrw	mtvec,a5
    80005974:	300027f3          	csrr	a5,mstatus
    80005978:	0087e793          	ori	a5,a5,8
    8000597c:	30079073          	csrw	mstatus,a5
    80005980:	304027f3          	csrr	a5,mie
    80005984:	0807e793          	ori	a5,a5,128
    80005988:	30479073          	csrw	mie,a5
    8000598c:	00813403          	ld	s0,8(sp)
    80005990:	01010113          	addi	sp,sp,16
    80005994:	00008067          	ret

0000000080005998 <system_main>:
    80005998:	fe010113          	addi	sp,sp,-32
    8000599c:	00813823          	sd	s0,16(sp)
    800059a0:	00913423          	sd	s1,8(sp)
    800059a4:	00113c23          	sd	ra,24(sp)
    800059a8:	02010413          	addi	s0,sp,32
    800059ac:	00000097          	auipc	ra,0x0
    800059b0:	0c4080e7          	jalr	196(ra) # 80005a70 <cpuid>
    800059b4:	00005497          	auipc	s1,0x5
    800059b8:	acc48493          	addi	s1,s1,-1332 # 8000a480 <started>
    800059bc:	02050263          	beqz	a0,800059e0 <system_main+0x48>
    800059c0:	0004a783          	lw	a5,0(s1)
    800059c4:	0007879b          	sext.w	a5,a5
    800059c8:	fe078ce3          	beqz	a5,800059c0 <system_main+0x28>
    800059cc:	0ff0000f          	fence
    800059d0:	00003517          	auipc	a0,0x3
    800059d4:	a9850513          	addi	a0,a0,-1384 # 80008468 <CONSOLE_STATUS+0x458>
    800059d8:	00001097          	auipc	ra,0x1
    800059dc:	a74080e7          	jalr	-1420(ra) # 8000644c <panic>
    800059e0:	00001097          	auipc	ra,0x1
    800059e4:	9c8080e7          	jalr	-1592(ra) # 800063a8 <consoleinit>
    800059e8:	00001097          	auipc	ra,0x1
    800059ec:	154080e7          	jalr	340(ra) # 80006b3c <printfinit>
    800059f0:	00003517          	auipc	a0,0x3
    800059f4:	b5850513          	addi	a0,a0,-1192 # 80008548 <CONSOLE_STATUS+0x538>
    800059f8:	00001097          	auipc	ra,0x1
    800059fc:	ab0080e7          	jalr	-1360(ra) # 800064a8 <__printf>
    80005a00:	00003517          	auipc	a0,0x3
    80005a04:	a3850513          	addi	a0,a0,-1480 # 80008438 <CONSOLE_STATUS+0x428>
    80005a08:	00001097          	auipc	ra,0x1
    80005a0c:	aa0080e7          	jalr	-1376(ra) # 800064a8 <__printf>
    80005a10:	00003517          	auipc	a0,0x3
    80005a14:	b3850513          	addi	a0,a0,-1224 # 80008548 <CONSOLE_STATUS+0x538>
    80005a18:	00001097          	auipc	ra,0x1
    80005a1c:	a90080e7          	jalr	-1392(ra) # 800064a8 <__printf>
    80005a20:	00001097          	auipc	ra,0x1
    80005a24:	4a8080e7          	jalr	1192(ra) # 80006ec8 <kinit>
    80005a28:	00000097          	auipc	ra,0x0
    80005a2c:	148080e7          	jalr	328(ra) # 80005b70 <trapinit>
    80005a30:	00000097          	auipc	ra,0x0
    80005a34:	16c080e7          	jalr	364(ra) # 80005b9c <trapinithart>
    80005a38:	00000097          	auipc	ra,0x0
    80005a3c:	5b8080e7          	jalr	1464(ra) # 80005ff0 <plicinit>
    80005a40:	00000097          	auipc	ra,0x0
    80005a44:	5d8080e7          	jalr	1496(ra) # 80006018 <plicinithart>
    80005a48:	00000097          	auipc	ra,0x0
    80005a4c:	078080e7          	jalr	120(ra) # 80005ac0 <userinit>
    80005a50:	0ff0000f          	fence
    80005a54:	00100793          	li	a5,1
    80005a58:	00003517          	auipc	a0,0x3
    80005a5c:	9f850513          	addi	a0,a0,-1544 # 80008450 <CONSOLE_STATUS+0x440>
    80005a60:	00f4a023          	sw	a5,0(s1)
    80005a64:	00001097          	auipc	ra,0x1
    80005a68:	a44080e7          	jalr	-1468(ra) # 800064a8 <__printf>
    80005a6c:	0000006f          	j	80005a6c <system_main+0xd4>

0000000080005a70 <cpuid>:
    80005a70:	ff010113          	addi	sp,sp,-16
    80005a74:	00813423          	sd	s0,8(sp)
    80005a78:	01010413          	addi	s0,sp,16
    80005a7c:	00020513          	mv	a0,tp
    80005a80:	00813403          	ld	s0,8(sp)
    80005a84:	0005051b          	sext.w	a0,a0
    80005a88:	01010113          	addi	sp,sp,16
    80005a8c:	00008067          	ret

0000000080005a90 <mycpu>:
    80005a90:	ff010113          	addi	sp,sp,-16
    80005a94:	00813423          	sd	s0,8(sp)
    80005a98:	01010413          	addi	s0,sp,16
    80005a9c:	00020793          	mv	a5,tp
    80005aa0:	00813403          	ld	s0,8(sp)
    80005aa4:	0007879b          	sext.w	a5,a5
    80005aa8:	00779793          	slli	a5,a5,0x7
    80005aac:	0000a517          	auipc	a0,0xa
    80005ab0:	af450513          	addi	a0,a0,-1292 # 8000f5a0 <cpus>
    80005ab4:	00f50533          	add	a0,a0,a5
    80005ab8:	01010113          	addi	sp,sp,16
    80005abc:	00008067          	ret

0000000080005ac0 <userinit>:
    80005ac0:	ff010113          	addi	sp,sp,-16
    80005ac4:	00813423          	sd	s0,8(sp)
    80005ac8:	01010413          	addi	s0,sp,16
    80005acc:	00813403          	ld	s0,8(sp)
    80005ad0:	01010113          	addi	sp,sp,16
    80005ad4:	ffffe317          	auipc	t1,0xffffe
    80005ad8:	9c430067          	jr	-1596(t1) # 80003498 <main>

0000000080005adc <either_copyout>:
    80005adc:	ff010113          	addi	sp,sp,-16
    80005ae0:	00813023          	sd	s0,0(sp)
    80005ae4:	00113423          	sd	ra,8(sp)
    80005ae8:	01010413          	addi	s0,sp,16
    80005aec:	02051663          	bnez	a0,80005b18 <either_copyout+0x3c>
    80005af0:	00058513          	mv	a0,a1
    80005af4:	00060593          	mv	a1,a2
    80005af8:	0006861b          	sext.w	a2,a3
    80005afc:	00002097          	auipc	ra,0x2
    80005b00:	c58080e7          	jalr	-936(ra) # 80007754 <__memmove>
    80005b04:	00813083          	ld	ra,8(sp)
    80005b08:	00013403          	ld	s0,0(sp)
    80005b0c:	00000513          	li	a0,0
    80005b10:	01010113          	addi	sp,sp,16
    80005b14:	00008067          	ret
    80005b18:	00003517          	auipc	a0,0x3
    80005b1c:	97850513          	addi	a0,a0,-1672 # 80008490 <CONSOLE_STATUS+0x480>
    80005b20:	00001097          	auipc	ra,0x1
    80005b24:	92c080e7          	jalr	-1748(ra) # 8000644c <panic>

0000000080005b28 <either_copyin>:
    80005b28:	ff010113          	addi	sp,sp,-16
    80005b2c:	00813023          	sd	s0,0(sp)
    80005b30:	00113423          	sd	ra,8(sp)
    80005b34:	01010413          	addi	s0,sp,16
    80005b38:	02059463          	bnez	a1,80005b60 <either_copyin+0x38>
    80005b3c:	00060593          	mv	a1,a2
    80005b40:	0006861b          	sext.w	a2,a3
    80005b44:	00002097          	auipc	ra,0x2
    80005b48:	c10080e7          	jalr	-1008(ra) # 80007754 <__memmove>
    80005b4c:	00813083          	ld	ra,8(sp)
    80005b50:	00013403          	ld	s0,0(sp)
    80005b54:	00000513          	li	a0,0
    80005b58:	01010113          	addi	sp,sp,16
    80005b5c:	00008067          	ret
    80005b60:	00003517          	auipc	a0,0x3
    80005b64:	95850513          	addi	a0,a0,-1704 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80005b68:	00001097          	auipc	ra,0x1
    80005b6c:	8e4080e7          	jalr	-1820(ra) # 8000644c <panic>

0000000080005b70 <trapinit>:
    80005b70:	ff010113          	addi	sp,sp,-16
    80005b74:	00813423          	sd	s0,8(sp)
    80005b78:	01010413          	addi	s0,sp,16
    80005b7c:	00813403          	ld	s0,8(sp)
    80005b80:	00003597          	auipc	a1,0x3
    80005b84:	96058593          	addi	a1,a1,-1696 # 800084e0 <CONSOLE_STATUS+0x4d0>
    80005b88:	0000a517          	auipc	a0,0xa
    80005b8c:	a9850513          	addi	a0,a0,-1384 # 8000f620 <tickslock>
    80005b90:	01010113          	addi	sp,sp,16
    80005b94:	00001317          	auipc	t1,0x1
    80005b98:	5c430067          	jr	1476(t1) # 80007158 <initlock>

0000000080005b9c <trapinithart>:
    80005b9c:	ff010113          	addi	sp,sp,-16
    80005ba0:	00813423          	sd	s0,8(sp)
    80005ba4:	01010413          	addi	s0,sp,16
    80005ba8:	00000797          	auipc	a5,0x0
    80005bac:	2f878793          	addi	a5,a5,760 # 80005ea0 <kernelvec>
    80005bb0:	10579073          	csrw	stvec,a5
    80005bb4:	00813403          	ld	s0,8(sp)
    80005bb8:	01010113          	addi	sp,sp,16
    80005bbc:	00008067          	ret

0000000080005bc0 <usertrap>:
    80005bc0:	ff010113          	addi	sp,sp,-16
    80005bc4:	00813423          	sd	s0,8(sp)
    80005bc8:	01010413          	addi	s0,sp,16
    80005bcc:	00813403          	ld	s0,8(sp)
    80005bd0:	01010113          	addi	sp,sp,16
    80005bd4:	00008067          	ret

0000000080005bd8 <usertrapret>:
    80005bd8:	ff010113          	addi	sp,sp,-16
    80005bdc:	00813423          	sd	s0,8(sp)
    80005be0:	01010413          	addi	s0,sp,16
    80005be4:	00813403          	ld	s0,8(sp)
    80005be8:	01010113          	addi	sp,sp,16
    80005bec:	00008067          	ret

0000000080005bf0 <kerneltrap>:
    80005bf0:	fe010113          	addi	sp,sp,-32
    80005bf4:	00813823          	sd	s0,16(sp)
    80005bf8:	00113c23          	sd	ra,24(sp)
    80005bfc:	00913423          	sd	s1,8(sp)
    80005c00:	02010413          	addi	s0,sp,32
    80005c04:	142025f3          	csrr	a1,scause
    80005c08:	100027f3          	csrr	a5,sstatus
    80005c0c:	0027f793          	andi	a5,a5,2
    80005c10:	10079c63          	bnez	a5,80005d28 <kerneltrap+0x138>
    80005c14:	142027f3          	csrr	a5,scause
    80005c18:	0207ce63          	bltz	a5,80005c54 <kerneltrap+0x64>
    80005c1c:	00003517          	auipc	a0,0x3
    80005c20:	90c50513          	addi	a0,a0,-1780 # 80008528 <CONSOLE_STATUS+0x518>
    80005c24:	00001097          	auipc	ra,0x1
    80005c28:	884080e7          	jalr	-1916(ra) # 800064a8 <__printf>
    80005c2c:	141025f3          	csrr	a1,sepc
    80005c30:	14302673          	csrr	a2,stval
    80005c34:	00003517          	auipc	a0,0x3
    80005c38:	90450513          	addi	a0,a0,-1788 # 80008538 <CONSOLE_STATUS+0x528>
    80005c3c:	00001097          	auipc	ra,0x1
    80005c40:	86c080e7          	jalr	-1940(ra) # 800064a8 <__printf>
    80005c44:	00003517          	auipc	a0,0x3
    80005c48:	90c50513          	addi	a0,a0,-1780 # 80008550 <CONSOLE_STATUS+0x540>
    80005c4c:	00001097          	auipc	ra,0x1
    80005c50:	800080e7          	jalr	-2048(ra) # 8000644c <panic>
    80005c54:	0ff7f713          	andi	a4,a5,255
    80005c58:	00900693          	li	a3,9
    80005c5c:	04d70063          	beq	a4,a3,80005c9c <kerneltrap+0xac>
    80005c60:	fff00713          	li	a4,-1
    80005c64:	03f71713          	slli	a4,a4,0x3f
    80005c68:	00170713          	addi	a4,a4,1
    80005c6c:	fae798e3          	bne	a5,a4,80005c1c <kerneltrap+0x2c>
    80005c70:	00000097          	auipc	ra,0x0
    80005c74:	e00080e7          	jalr	-512(ra) # 80005a70 <cpuid>
    80005c78:	06050663          	beqz	a0,80005ce4 <kerneltrap+0xf4>
    80005c7c:	144027f3          	csrr	a5,sip
    80005c80:	ffd7f793          	andi	a5,a5,-3
    80005c84:	14479073          	csrw	sip,a5
    80005c88:	01813083          	ld	ra,24(sp)
    80005c8c:	01013403          	ld	s0,16(sp)
    80005c90:	00813483          	ld	s1,8(sp)
    80005c94:	02010113          	addi	sp,sp,32
    80005c98:	00008067          	ret
    80005c9c:	00000097          	auipc	ra,0x0
    80005ca0:	3c8080e7          	jalr	968(ra) # 80006064 <plic_claim>
    80005ca4:	00a00793          	li	a5,10
    80005ca8:	00050493          	mv	s1,a0
    80005cac:	06f50863          	beq	a0,a5,80005d1c <kerneltrap+0x12c>
    80005cb0:	fc050ce3          	beqz	a0,80005c88 <kerneltrap+0x98>
    80005cb4:	00050593          	mv	a1,a0
    80005cb8:	00003517          	auipc	a0,0x3
    80005cbc:	85050513          	addi	a0,a0,-1968 # 80008508 <CONSOLE_STATUS+0x4f8>
    80005cc0:	00000097          	auipc	ra,0x0
    80005cc4:	7e8080e7          	jalr	2024(ra) # 800064a8 <__printf>
    80005cc8:	01013403          	ld	s0,16(sp)
    80005ccc:	01813083          	ld	ra,24(sp)
    80005cd0:	00048513          	mv	a0,s1
    80005cd4:	00813483          	ld	s1,8(sp)
    80005cd8:	02010113          	addi	sp,sp,32
    80005cdc:	00000317          	auipc	t1,0x0
    80005ce0:	3c030067          	jr	960(t1) # 8000609c <plic_complete>
    80005ce4:	0000a517          	auipc	a0,0xa
    80005ce8:	93c50513          	addi	a0,a0,-1732 # 8000f620 <tickslock>
    80005cec:	00001097          	auipc	ra,0x1
    80005cf0:	490080e7          	jalr	1168(ra) # 8000717c <acquire>
    80005cf4:	00004717          	auipc	a4,0x4
    80005cf8:	79070713          	addi	a4,a4,1936 # 8000a484 <ticks>
    80005cfc:	00072783          	lw	a5,0(a4)
    80005d00:	0000a517          	auipc	a0,0xa
    80005d04:	92050513          	addi	a0,a0,-1760 # 8000f620 <tickslock>
    80005d08:	0017879b          	addiw	a5,a5,1
    80005d0c:	00f72023          	sw	a5,0(a4)
    80005d10:	00001097          	auipc	ra,0x1
    80005d14:	538080e7          	jalr	1336(ra) # 80007248 <release>
    80005d18:	f65ff06f          	j	80005c7c <kerneltrap+0x8c>
    80005d1c:	00001097          	auipc	ra,0x1
    80005d20:	094080e7          	jalr	148(ra) # 80006db0 <uartintr>
    80005d24:	fa5ff06f          	j	80005cc8 <kerneltrap+0xd8>
    80005d28:	00002517          	auipc	a0,0x2
    80005d2c:	7c050513          	addi	a0,a0,1984 # 800084e8 <CONSOLE_STATUS+0x4d8>
    80005d30:	00000097          	auipc	ra,0x0
    80005d34:	71c080e7          	jalr	1820(ra) # 8000644c <panic>

0000000080005d38 <clockintr>:
    80005d38:	fe010113          	addi	sp,sp,-32
    80005d3c:	00813823          	sd	s0,16(sp)
    80005d40:	00913423          	sd	s1,8(sp)
    80005d44:	00113c23          	sd	ra,24(sp)
    80005d48:	02010413          	addi	s0,sp,32
    80005d4c:	0000a497          	auipc	s1,0xa
    80005d50:	8d448493          	addi	s1,s1,-1836 # 8000f620 <tickslock>
    80005d54:	00048513          	mv	a0,s1
    80005d58:	00001097          	auipc	ra,0x1
    80005d5c:	424080e7          	jalr	1060(ra) # 8000717c <acquire>
    80005d60:	00004717          	auipc	a4,0x4
    80005d64:	72470713          	addi	a4,a4,1828 # 8000a484 <ticks>
    80005d68:	00072783          	lw	a5,0(a4)
    80005d6c:	01013403          	ld	s0,16(sp)
    80005d70:	01813083          	ld	ra,24(sp)
    80005d74:	00048513          	mv	a0,s1
    80005d78:	0017879b          	addiw	a5,a5,1
    80005d7c:	00813483          	ld	s1,8(sp)
    80005d80:	00f72023          	sw	a5,0(a4)
    80005d84:	02010113          	addi	sp,sp,32
    80005d88:	00001317          	auipc	t1,0x1
    80005d8c:	4c030067          	jr	1216(t1) # 80007248 <release>

0000000080005d90 <devintr>:
    80005d90:	142027f3          	csrr	a5,scause
    80005d94:	00000513          	li	a0,0
    80005d98:	0007c463          	bltz	a5,80005da0 <devintr+0x10>
    80005d9c:	00008067          	ret
    80005da0:	fe010113          	addi	sp,sp,-32
    80005da4:	00813823          	sd	s0,16(sp)
    80005da8:	00113c23          	sd	ra,24(sp)
    80005dac:	00913423          	sd	s1,8(sp)
    80005db0:	02010413          	addi	s0,sp,32
    80005db4:	0ff7f713          	andi	a4,a5,255
    80005db8:	00900693          	li	a3,9
    80005dbc:	04d70c63          	beq	a4,a3,80005e14 <devintr+0x84>
    80005dc0:	fff00713          	li	a4,-1
    80005dc4:	03f71713          	slli	a4,a4,0x3f
    80005dc8:	00170713          	addi	a4,a4,1
    80005dcc:	00e78c63          	beq	a5,a4,80005de4 <devintr+0x54>
    80005dd0:	01813083          	ld	ra,24(sp)
    80005dd4:	01013403          	ld	s0,16(sp)
    80005dd8:	00813483          	ld	s1,8(sp)
    80005ddc:	02010113          	addi	sp,sp,32
    80005de0:	00008067          	ret
    80005de4:	00000097          	auipc	ra,0x0
    80005de8:	c8c080e7          	jalr	-884(ra) # 80005a70 <cpuid>
    80005dec:	06050663          	beqz	a0,80005e58 <devintr+0xc8>
    80005df0:	144027f3          	csrr	a5,sip
    80005df4:	ffd7f793          	andi	a5,a5,-3
    80005df8:	14479073          	csrw	sip,a5
    80005dfc:	01813083          	ld	ra,24(sp)
    80005e00:	01013403          	ld	s0,16(sp)
    80005e04:	00813483          	ld	s1,8(sp)
    80005e08:	00200513          	li	a0,2
    80005e0c:	02010113          	addi	sp,sp,32
    80005e10:	00008067          	ret
    80005e14:	00000097          	auipc	ra,0x0
    80005e18:	250080e7          	jalr	592(ra) # 80006064 <plic_claim>
    80005e1c:	00a00793          	li	a5,10
    80005e20:	00050493          	mv	s1,a0
    80005e24:	06f50663          	beq	a0,a5,80005e90 <devintr+0x100>
    80005e28:	00100513          	li	a0,1
    80005e2c:	fa0482e3          	beqz	s1,80005dd0 <devintr+0x40>
    80005e30:	00048593          	mv	a1,s1
    80005e34:	00002517          	auipc	a0,0x2
    80005e38:	6d450513          	addi	a0,a0,1748 # 80008508 <CONSOLE_STATUS+0x4f8>
    80005e3c:	00000097          	auipc	ra,0x0
    80005e40:	66c080e7          	jalr	1644(ra) # 800064a8 <__printf>
    80005e44:	00048513          	mv	a0,s1
    80005e48:	00000097          	auipc	ra,0x0
    80005e4c:	254080e7          	jalr	596(ra) # 8000609c <plic_complete>
    80005e50:	00100513          	li	a0,1
    80005e54:	f7dff06f          	j	80005dd0 <devintr+0x40>
    80005e58:	00009517          	auipc	a0,0x9
    80005e5c:	7c850513          	addi	a0,a0,1992 # 8000f620 <tickslock>
    80005e60:	00001097          	auipc	ra,0x1
    80005e64:	31c080e7          	jalr	796(ra) # 8000717c <acquire>
    80005e68:	00004717          	auipc	a4,0x4
    80005e6c:	61c70713          	addi	a4,a4,1564 # 8000a484 <ticks>
    80005e70:	00072783          	lw	a5,0(a4)
    80005e74:	00009517          	auipc	a0,0x9
    80005e78:	7ac50513          	addi	a0,a0,1964 # 8000f620 <tickslock>
    80005e7c:	0017879b          	addiw	a5,a5,1
    80005e80:	00f72023          	sw	a5,0(a4)
    80005e84:	00001097          	auipc	ra,0x1
    80005e88:	3c4080e7          	jalr	964(ra) # 80007248 <release>
    80005e8c:	f65ff06f          	j	80005df0 <devintr+0x60>
    80005e90:	00001097          	auipc	ra,0x1
    80005e94:	f20080e7          	jalr	-224(ra) # 80006db0 <uartintr>
    80005e98:	fadff06f          	j	80005e44 <devintr+0xb4>
    80005e9c:	0000                	unimp
	...

0000000080005ea0 <kernelvec>:
    80005ea0:	f0010113          	addi	sp,sp,-256
    80005ea4:	00113023          	sd	ra,0(sp)
    80005ea8:	00213423          	sd	sp,8(sp)
    80005eac:	00313823          	sd	gp,16(sp)
    80005eb0:	00413c23          	sd	tp,24(sp)
    80005eb4:	02513023          	sd	t0,32(sp)
    80005eb8:	02613423          	sd	t1,40(sp)
    80005ebc:	02713823          	sd	t2,48(sp)
    80005ec0:	02813c23          	sd	s0,56(sp)
    80005ec4:	04913023          	sd	s1,64(sp)
    80005ec8:	04a13423          	sd	a0,72(sp)
    80005ecc:	04b13823          	sd	a1,80(sp)
    80005ed0:	04c13c23          	sd	a2,88(sp)
    80005ed4:	06d13023          	sd	a3,96(sp)
    80005ed8:	06e13423          	sd	a4,104(sp)
    80005edc:	06f13823          	sd	a5,112(sp)
    80005ee0:	07013c23          	sd	a6,120(sp)
    80005ee4:	09113023          	sd	a7,128(sp)
    80005ee8:	09213423          	sd	s2,136(sp)
    80005eec:	09313823          	sd	s3,144(sp)
    80005ef0:	09413c23          	sd	s4,152(sp)
    80005ef4:	0b513023          	sd	s5,160(sp)
    80005ef8:	0b613423          	sd	s6,168(sp)
    80005efc:	0b713823          	sd	s7,176(sp)
    80005f00:	0b813c23          	sd	s8,184(sp)
    80005f04:	0d913023          	sd	s9,192(sp)
    80005f08:	0da13423          	sd	s10,200(sp)
    80005f0c:	0db13823          	sd	s11,208(sp)
    80005f10:	0dc13c23          	sd	t3,216(sp)
    80005f14:	0fd13023          	sd	t4,224(sp)
    80005f18:	0fe13423          	sd	t5,232(sp)
    80005f1c:	0ff13823          	sd	t6,240(sp)
    80005f20:	cd1ff0ef          	jal	ra,80005bf0 <kerneltrap>
    80005f24:	00013083          	ld	ra,0(sp)
    80005f28:	00813103          	ld	sp,8(sp)
    80005f2c:	01013183          	ld	gp,16(sp)
    80005f30:	02013283          	ld	t0,32(sp)
    80005f34:	02813303          	ld	t1,40(sp)
    80005f38:	03013383          	ld	t2,48(sp)
    80005f3c:	03813403          	ld	s0,56(sp)
    80005f40:	04013483          	ld	s1,64(sp)
    80005f44:	04813503          	ld	a0,72(sp)
    80005f48:	05013583          	ld	a1,80(sp)
    80005f4c:	05813603          	ld	a2,88(sp)
    80005f50:	06013683          	ld	a3,96(sp)
    80005f54:	06813703          	ld	a4,104(sp)
    80005f58:	07013783          	ld	a5,112(sp)
    80005f5c:	07813803          	ld	a6,120(sp)
    80005f60:	08013883          	ld	a7,128(sp)
    80005f64:	08813903          	ld	s2,136(sp)
    80005f68:	09013983          	ld	s3,144(sp)
    80005f6c:	09813a03          	ld	s4,152(sp)
    80005f70:	0a013a83          	ld	s5,160(sp)
    80005f74:	0a813b03          	ld	s6,168(sp)
    80005f78:	0b013b83          	ld	s7,176(sp)
    80005f7c:	0b813c03          	ld	s8,184(sp)
    80005f80:	0c013c83          	ld	s9,192(sp)
    80005f84:	0c813d03          	ld	s10,200(sp)
    80005f88:	0d013d83          	ld	s11,208(sp)
    80005f8c:	0d813e03          	ld	t3,216(sp)
    80005f90:	0e013e83          	ld	t4,224(sp)
    80005f94:	0e813f03          	ld	t5,232(sp)
    80005f98:	0f013f83          	ld	t6,240(sp)
    80005f9c:	10010113          	addi	sp,sp,256
    80005fa0:	10200073          	sret
    80005fa4:	00000013          	nop
    80005fa8:	00000013          	nop
    80005fac:	00000013          	nop

0000000080005fb0 <timervec>:
    80005fb0:	34051573          	csrrw	a0,mscratch,a0
    80005fb4:	00b53023          	sd	a1,0(a0)
    80005fb8:	00c53423          	sd	a2,8(a0)
    80005fbc:	00d53823          	sd	a3,16(a0)
    80005fc0:	01853583          	ld	a1,24(a0)
    80005fc4:	02053603          	ld	a2,32(a0)
    80005fc8:	0005b683          	ld	a3,0(a1)
    80005fcc:	00c686b3          	add	a3,a3,a2
    80005fd0:	00d5b023          	sd	a3,0(a1)
    80005fd4:	00200593          	li	a1,2
    80005fd8:	14459073          	csrw	sip,a1
    80005fdc:	01053683          	ld	a3,16(a0)
    80005fe0:	00853603          	ld	a2,8(a0)
    80005fe4:	00053583          	ld	a1,0(a0)
    80005fe8:	34051573          	csrrw	a0,mscratch,a0
    80005fec:	30200073          	mret

0000000080005ff0 <plicinit>:
    80005ff0:	ff010113          	addi	sp,sp,-16
    80005ff4:	00813423          	sd	s0,8(sp)
    80005ff8:	01010413          	addi	s0,sp,16
    80005ffc:	00813403          	ld	s0,8(sp)
    80006000:	0c0007b7          	lui	a5,0xc000
    80006004:	00100713          	li	a4,1
    80006008:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000600c:	00e7a223          	sw	a4,4(a5)
    80006010:	01010113          	addi	sp,sp,16
    80006014:	00008067          	ret

0000000080006018 <plicinithart>:
    80006018:	ff010113          	addi	sp,sp,-16
    8000601c:	00813023          	sd	s0,0(sp)
    80006020:	00113423          	sd	ra,8(sp)
    80006024:	01010413          	addi	s0,sp,16
    80006028:	00000097          	auipc	ra,0x0
    8000602c:	a48080e7          	jalr	-1464(ra) # 80005a70 <cpuid>
    80006030:	0085171b          	slliw	a4,a0,0x8
    80006034:	0c0027b7          	lui	a5,0xc002
    80006038:	00e787b3          	add	a5,a5,a4
    8000603c:	40200713          	li	a4,1026
    80006040:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006044:	00813083          	ld	ra,8(sp)
    80006048:	00013403          	ld	s0,0(sp)
    8000604c:	00d5151b          	slliw	a0,a0,0xd
    80006050:	0c2017b7          	lui	a5,0xc201
    80006054:	00a78533          	add	a0,a5,a0
    80006058:	00052023          	sw	zero,0(a0)
    8000605c:	01010113          	addi	sp,sp,16
    80006060:	00008067          	ret

0000000080006064 <plic_claim>:
    80006064:	ff010113          	addi	sp,sp,-16
    80006068:	00813023          	sd	s0,0(sp)
    8000606c:	00113423          	sd	ra,8(sp)
    80006070:	01010413          	addi	s0,sp,16
    80006074:	00000097          	auipc	ra,0x0
    80006078:	9fc080e7          	jalr	-1540(ra) # 80005a70 <cpuid>
    8000607c:	00813083          	ld	ra,8(sp)
    80006080:	00013403          	ld	s0,0(sp)
    80006084:	00d5151b          	slliw	a0,a0,0xd
    80006088:	0c2017b7          	lui	a5,0xc201
    8000608c:	00a78533          	add	a0,a5,a0
    80006090:	00452503          	lw	a0,4(a0)
    80006094:	01010113          	addi	sp,sp,16
    80006098:	00008067          	ret

000000008000609c <plic_complete>:
    8000609c:	fe010113          	addi	sp,sp,-32
    800060a0:	00813823          	sd	s0,16(sp)
    800060a4:	00913423          	sd	s1,8(sp)
    800060a8:	00113c23          	sd	ra,24(sp)
    800060ac:	02010413          	addi	s0,sp,32
    800060b0:	00050493          	mv	s1,a0
    800060b4:	00000097          	auipc	ra,0x0
    800060b8:	9bc080e7          	jalr	-1604(ra) # 80005a70 <cpuid>
    800060bc:	01813083          	ld	ra,24(sp)
    800060c0:	01013403          	ld	s0,16(sp)
    800060c4:	00d5179b          	slliw	a5,a0,0xd
    800060c8:	0c201737          	lui	a4,0xc201
    800060cc:	00f707b3          	add	a5,a4,a5
    800060d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800060d4:	00813483          	ld	s1,8(sp)
    800060d8:	02010113          	addi	sp,sp,32
    800060dc:	00008067          	ret

00000000800060e0 <consolewrite>:
    800060e0:	fb010113          	addi	sp,sp,-80
    800060e4:	04813023          	sd	s0,64(sp)
    800060e8:	04113423          	sd	ra,72(sp)
    800060ec:	02913c23          	sd	s1,56(sp)
    800060f0:	03213823          	sd	s2,48(sp)
    800060f4:	03313423          	sd	s3,40(sp)
    800060f8:	03413023          	sd	s4,32(sp)
    800060fc:	01513c23          	sd	s5,24(sp)
    80006100:	05010413          	addi	s0,sp,80
    80006104:	06c05c63          	blez	a2,8000617c <consolewrite+0x9c>
    80006108:	00060993          	mv	s3,a2
    8000610c:	00050a13          	mv	s4,a0
    80006110:	00058493          	mv	s1,a1
    80006114:	00000913          	li	s2,0
    80006118:	fff00a93          	li	s5,-1
    8000611c:	01c0006f          	j	80006138 <consolewrite+0x58>
    80006120:	fbf44503          	lbu	a0,-65(s0)
    80006124:	0019091b          	addiw	s2,s2,1
    80006128:	00148493          	addi	s1,s1,1
    8000612c:	00001097          	auipc	ra,0x1
    80006130:	a9c080e7          	jalr	-1380(ra) # 80006bc8 <uartputc>
    80006134:	03298063          	beq	s3,s2,80006154 <consolewrite+0x74>
    80006138:	00048613          	mv	a2,s1
    8000613c:	00100693          	li	a3,1
    80006140:	000a0593          	mv	a1,s4
    80006144:	fbf40513          	addi	a0,s0,-65
    80006148:	00000097          	auipc	ra,0x0
    8000614c:	9e0080e7          	jalr	-1568(ra) # 80005b28 <either_copyin>
    80006150:	fd5518e3          	bne	a0,s5,80006120 <consolewrite+0x40>
    80006154:	04813083          	ld	ra,72(sp)
    80006158:	04013403          	ld	s0,64(sp)
    8000615c:	03813483          	ld	s1,56(sp)
    80006160:	02813983          	ld	s3,40(sp)
    80006164:	02013a03          	ld	s4,32(sp)
    80006168:	01813a83          	ld	s5,24(sp)
    8000616c:	00090513          	mv	a0,s2
    80006170:	03013903          	ld	s2,48(sp)
    80006174:	05010113          	addi	sp,sp,80
    80006178:	00008067          	ret
    8000617c:	00000913          	li	s2,0
    80006180:	fd5ff06f          	j	80006154 <consolewrite+0x74>

0000000080006184 <consoleread>:
    80006184:	f9010113          	addi	sp,sp,-112
    80006188:	06813023          	sd	s0,96(sp)
    8000618c:	04913c23          	sd	s1,88(sp)
    80006190:	05213823          	sd	s2,80(sp)
    80006194:	05313423          	sd	s3,72(sp)
    80006198:	05413023          	sd	s4,64(sp)
    8000619c:	03513c23          	sd	s5,56(sp)
    800061a0:	03613823          	sd	s6,48(sp)
    800061a4:	03713423          	sd	s7,40(sp)
    800061a8:	03813023          	sd	s8,32(sp)
    800061ac:	06113423          	sd	ra,104(sp)
    800061b0:	01913c23          	sd	s9,24(sp)
    800061b4:	07010413          	addi	s0,sp,112
    800061b8:	00060b93          	mv	s7,a2
    800061bc:	00050913          	mv	s2,a0
    800061c0:	00058c13          	mv	s8,a1
    800061c4:	00060b1b          	sext.w	s6,a2
    800061c8:	00009497          	auipc	s1,0x9
    800061cc:	48048493          	addi	s1,s1,1152 # 8000f648 <cons>
    800061d0:	00400993          	li	s3,4
    800061d4:	fff00a13          	li	s4,-1
    800061d8:	00a00a93          	li	s5,10
    800061dc:	05705e63          	blez	s7,80006238 <consoleread+0xb4>
    800061e0:	09c4a703          	lw	a4,156(s1)
    800061e4:	0984a783          	lw	a5,152(s1)
    800061e8:	0007071b          	sext.w	a4,a4
    800061ec:	08e78463          	beq	a5,a4,80006274 <consoleread+0xf0>
    800061f0:	07f7f713          	andi	a4,a5,127
    800061f4:	00e48733          	add	a4,s1,a4
    800061f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800061fc:	0017869b          	addiw	a3,a5,1
    80006200:	08d4ac23          	sw	a3,152(s1)
    80006204:	00070c9b          	sext.w	s9,a4
    80006208:	0b370663          	beq	a4,s3,800062b4 <consoleread+0x130>
    8000620c:	00100693          	li	a3,1
    80006210:	f9f40613          	addi	a2,s0,-97
    80006214:	000c0593          	mv	a1,s8
    80006218:	00090513          	mv	a0,s2
    8000621c:	f8e40fa3          	sb	a4,-97(s0)
    80006220:	00000097          	auipc	ra,0x0
    80006224:	8bc080e7          	jalr	-1860(ra) # 80005adc <either_copyout>
    80006228:	01450863          	beq	a0,s4,80006238 <consoleread+0xb4>
    8000622c:	001c0c13          	addi	s8,s8,1
    80006230:	fffb8b9b          	addiw	s7,s7,-1
    80006234:	fb5c94e3          	bne	s9,s5,800061dc <consoleread+0x58>
    80006238:	000b851b          	sext.w	a0,s7
    8000623c:	06813083          	ld	ra,104(sp)
    80006240:	06013403          	ld	s0,96(sp)
    80006244:	05813483          	ld	s1,88(sp)
    80006248:	05013903          	ld	s2,80(sp)
    8000624c:	04813983          	ld	s3,72(sp)
    80006250:	04013a03          	ld	s4,64(sp)
    80006254:	03813a83          	ld	s5,56(sp)
    80006258:	02813b83          	ld	s7,40(sp)
    8000625c:	02013c03          	ld	s8,32(sp)
    80006260:	01813c83          	ld	s9,24(sp)
    80006264:	40ab053b          	subw	a0,s6,a0
    80006268:	03013b03          	ld	s6,48(sp)
    8000626c:	07010113          	addi	sp,sp,112
    80006270:	00008067          	ret
    80006274:	00001097          	auipc	ra,0x1
    80006278:	1d8080e7          	jalr	472(ra) # 8000744c <push_on>
    8000627c:	0984a703          	lw	a4,152(s1)
    80006280:	09c4a783          	lw	a5,156(s1)
    80006284:	0007879b          	sext.w	a5,a5
    80006288:	fef70ce3          	beq	a4,a5,80006280 <consoleread+0xfc>
    8000628c:	00001097          	auipc	ra,0x1
    80006290:	234080e7          	jalr	564(ra) # 800074c0 <pop_on>
    80006294:	0984a783          	lw	a5,152(s1)
    80006298:	07f7f713          	andi	a4,a5,127
    8000629c:	00e48733          	add	a4,s1,a4
    800062a0:	01874703          	lbu	a4,24(a4)
    800062a4:	0017869b          	addiw	a3,a5,1
    800062a8:	08d4ac23          	sw	a3,152(s1)
    800062ac:	00070c9b          	sext.w	s9,a4
    800062b0:	f5371ee3          	bne	a4,s3,8000620c <consoleread+0x88>
    800062b4:	000b851b          	sext.w	a0,s7
    800062b8:	f96bf2e3          	bgeu	s7,s6,8000623c <consoleread+0xb8>
    800062bc:	08f4ac23          	sw	a5,152(s1)
    800062c0:	f7dff06f          	j	8000623c <consoleread+0xb8>

00000000800062c4 <consputc>:
    800062c4:	10000793          	li	a5,256
    800062c8:	00f50663          	beq	a0,a5,800062d4 <consputc+0x10>
    800062cc:	00001317          	auipc	t1,0x1
    800062d0:	9f430067          	jr	-1548(t1) # 80006cc0 <uartputc_sync>
    800062d4:	ff010113          	addi	sp,sp,-16
    800062d8:	00113423          	sd	ra,8(sp)
    800062dc:	00813023          	sd	s0,0(sp)
    800062e0:	01010413          	addi	s0,sp,16
    800062e4:	00800513          	li	a0,8
    800062e8:	00001097          	auipc	ra,0x1
    800062ec:	9d8080e7          	jalr	-1576(ra) # 80006cc0 <uartputc_sync>
    800062f0:	02000513          	li	a0,32
    800062f4:	00001097          	auipc	ra,0x1
    800062f8:	9cc080e7          	jalr	-1588(ra) # 80006cc0 <uartputc_sync>
    800062fc:	00013403          	ld	s0,0(sp)
    80006300:	00813083          	ld	ra,8(sp)
    80006304:	00800513          	li	a0,8
    80006308:	01010113          	addi	sp,sp,16
    8000630c:	00001317          	auipc	t1,0x1
    80006310:	9b430067          	jr	-1612(t1) # 80006cc0 <uartputc_sync>

0000000080006314 <consoleintr>:
    80006314:	fe010113          	addi	sp,sp,-32
    80006318:	00813823          	sd	s0,16(sp)
    8000631c:	00913423          	sd	s1,8(sp)
    80006320:	01213023          	sd	s2,0(sp)
    80006324:	00113c23          	sd	ra,24(sp)
    80006328:	02010413          	addi	s0,sp,32
    8000632c:	00009917          	auipc	s2,0x9
    80006330:	31c90913          	addi	s2,s2,796 # 8000f648 <cons>
    80006334:	00050493          	mv	s1,a0
    80006338:	00090513          	mv	a0,s2
    8000633c:	00001097          	auipc	ra,0x1
    80006340:	e40080e7          	jalr	-448(ra) # 8000717c <acquire>
    80006344:	02048c63          	beqz	s1,8000637c <consoleintr+0x68>
    80006348:	0a092783          	lw	a5,160(s2)
    8000634c:	09892703          	lw	a4,152(s2)
    80006350:	07f00693          	li	a3,127
    80006354:	40e7873b          	subw	a4,a5,a4
    80006358:	02e6e263          	bltu	a3,a4,8000637c <consoleintr+0x68>
    8000635c:	00d00713          	li	a4,13
    80006360:	04e48063          	beq	s1,a4,800063a0 <consoleintr+0x8c>
    80006364:	07f7f713          	andi	a4,a5,127
    80006368:	00e90733          	add	a4,s2,a4
    8000636c:	0017879b          	addiw	a5,a5,1
    80006370:	0af92023          	sw	a5,160(s2)
    80006374:	00970c23          	sb	s1,24(a4)
    80006378:	08f92e23          	sw	a5,156(s2)
    8000637c:	01013403          	ld	s0,16(sp)
    80006380:	01813083          	ld	ra,24(sp)
    80006384:	00813483          	ld	s1,8(sp)
    80006388:	00013903          	ld	s2,0(sp)
    8000638c:	00009517          	auipc	a0,0x9
    80006390:	2bc50513          	addi	a0,a0,700 # 8000f648 <cons>
    80006394:	02010113          	addi	sp,sp,32
    80006398:	00001317          	auipc	t1,0x1
    8000639c:	eb030067          	jr	-336(t1) # 80007248 <release>
    800063a0:	00a00493          	li	s1,10
    800063a4:	fc1ff06f          	j	80006364 <consoleintr+0x50>

00000000800063a8 <consoleinit>:
    800063a8:	fe010113          	addi	sp,sp,-32
    800063ac:	00113c23          	sd	ra,24(sp)
    800063b0:	00813823          	sd	s0,16(sp)
    800063b4:	00913423          	sd	s1,8(sp)
    800063b8:	02010413          	addi	s0,sp,32
    800063bc:	00009497          	auipc	s1,0x9
    800063c0:	28c48493          	addi	s1,s1,652 # 8000f648 <cons>
    800063c4:	00048513          	mv	a0,s1
    800063c8:	00002597          	auipc	a1,0x2
    800063cc:	19858593          	addi	a1,a1,408 # 80008560 <CONSOLE_STATUS+0x550>
    800063d0:	00001097          	auipc	ra,0x1
    800063d4:	d88080e7          	jalr	-632(ra) # 80007158 <initlock>
    800063d8:	00000097          	auipc	ra,0x0
    800063dc:	7ac080e7          	jalr	1964(ra) # 80006b84 <uartinit>
    800063e0:	01813083          	ld	ra,24(sp)
    800063e4:	01013403          	ld	s0,16(sp)
    800063e8:	00000797          	auipc	a5,0x0
    800063ec:	d9c78793          	addi	a5,a5,-612 # 80006184 <consoleread>
    800063f0:	0af4bc23          	sd	a5,184(s1)
    800063f4:	00000797          	auipc	a5,0x0
    800063f8:	cec78793          	addi	a5,a5,-788 # 800060e0 <consolewrite>
    800063fc:	0cf4b023          	sd	a5,192(s1)
    80006400:	00813483          	ld	s1,8(sp)
    80006404:	02010113          	addi	sp,sp,32
    80006408:	00008067          	ret

000000008000640c <console_read>:
    8000640c:	ff010113          	addi	sp,sp,-16
    80006410:	00813423          	sd	s0,8(sp)
    80006414:	01010413          	addi	s0,sp,16
    80006418:	00813403          	ld	s0,8(sp)
    8000641c:	00009317          	auipc	t1,0x9
    80006420:	2e433303          	ld	t1,740(t1) # 8000f700 <devsw+0x10>
    80006424:	01010113          	addi	sp,sp,16
    80006428:	00030067          	jr	t1

000000008000642c <console_write>:
    8000642c:	ff010113          	addi	sp,sp,-16
    80006430:	00813423          	sd	s0,8(sp)
    80006434:	01010413          	addi	s0,sp,16
    80006438:	00813403          	ld	s0,8(sp)
    8000643c:	00009317          	auipc	t1,0x9
    80006440:	2cc33303          	ld	t1,716(t1) # 8000f708 <devsw+0x18>
    80006444:	01010113          	addi	sp,sp,16
    80006448:	00030067          	jr	t1

000000008000644c <panic>:
    8000644c:	fe010113          	addi	sp,sp,-32
    80006450:	00113c23          	sd	ra,24(sp)
    80006454:	00813823          	sd	s0,16(sp)
    80006458:	00913423          	sd	s1,8(sp)
    8000645c:	02010413          	addi	s0,sp,32
    80006460:	00050493          	mv	s1,a0
    80006464:	00002517          	auipc	a0,0x2
    80006468:	10450513          	addi	a0,a0,260 # 80008568 <CONSOLE_STATUS+0x558>
    8000646c:	00009797          	auipc	a5,0x9
    80006470:	3207ae23          	sw	zero,828(a5) # 8000f7a8 <pr+0x18>
    80006474:	00000097          	auipc	ra,0x0
    80006478:	034080e7          	jalr	52(ra) # 800064a8 <__printf>
    8000647c:	00048513          	mv	a0,s1
    80006480:	00000097          	auipc	ra,0x0
    80006484:	028080e7          	jalr	40(ra) # 800064a8 <__printf>
    80006488:	00002517          	auipc	a0,0x2
    8000648c:	0c050513          	addi	a0,a0,192 # 80008548 <CONSOLE_STATUS+0x538>
    80006490:	00000097          	auipc	ra,0x0
    80006494:	018080e7          	jalr	24(ra) # 800064a8 <__printf>
    80006498:	00100793          	li	a5,1
    8000649c:	00004717          	auipc	a4,0x4
    800064a0:	fef72623          	sw	a5,-20(a4) # 8000a488 <panicked>
    800064a4:	0000006f          	j	800064a4 <panic+0x58>

00000000800064a8 <__printf>:
    800064a8:	f3010113          	addi	sp,sp,-208
    800064ac:	08813023          	sd	s0,128(sp)
    800064b0:	07313423          	sd	s3,104(sp)
    800064b4:	09010413          	addi	s0,sp,144
    800064b8:	05813023          	sd	s8,64(sp)
    800064bc:	08113423          	sd	ra,136(sp)
    800064c0:	06913c23          	sd	s1,120(sp)
    800064c4:	07213823          	sd	s2,112(sp)
    800064c8:	07413023          	sd	s4,96(sp)
    800064cc:	05513c23          	sd	s5,88(sp)
    800064d0:	05613823          	sd	s6,80(sp)
    800064d4:	05713423          	sd	s7,72(sp)
    800064d8:	03913c23          	sd	s9,56(sp)
    800064dc:	03a13823          	sd	s10,48(sp)
    800064e0:	03b13423          	sd	s11,40(sp)
    800064e4:	00009317          	auipc	t1,0x9
    800064e8:	2ac30313          	addi	t1,t1,684 # 8000f790 <pr>
    800064ec:	01832c03          	lw	s8,24(t1)
    800064f0:	00b43423          	sd	a1,8(s0)
    800064f4:	00c43823          	sd	a2,16(s0)
    800064f8:	00d43c23          	sd	a3,24(s0)
    800064fc:	02e43023          	sd	a4,32(s0)
    80006500:	02f43423          	sd	a5,40(s0)
    80006504:	03043823          	sd	a6,48(s0)
    80006508:	03143c23          	sd	a7,56(s0)
    8000650c:	00050993          	mv	s3,a0
    80006510:	4a0c1663          	bnez	s8,800069bc <__printf+0x514>
    80006514:	60098c63          	beqz	s3,80006b2c <__printf+0x684>
    80006518:	0009c503          	lbu	a0,0(s3)
    8000651c:	00840793          	addi	a5,s0,8
    80006520:	f6f43c23          	sd	a5,-136(s0)
    80006524:	00000493          	li	s1,0
    80006528:	22050063          	beqz	a0,80006748 <__printf+0x2a0>
    8000652c:	00002a37          	lui	s4,0x2
    80006530:	00018ab7          	lui	s5,0x18
    80006534:	000f4b37          	lui	s6,0xf4
    80006538:	00989bb7          	lui	s7,0x989
    8000653c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006540:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006544:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006548:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000654c:	00148c9b          	addiw	s9,s1,1
    80006550:	02500793          	li	a5,37
    80006554:	01998933          	add	s2,s3,s9
    80006558:	38f51263          	bne	a0,a5,800068dc <__printf+0x434>
    8000655c:	00094783          	lbu	a5,0(s2)
    80006560:	00078c9b          	sext.w	s9,a5
    80006564:	1e078263          	beqz	a5,80006748 <__printf+0x2a0>
    80006568:	0024849b          	addiw	s1,s1,2
    8000656c:	07000713          	li	a4,112
    80006570:	00998933          	add	s2,s3,s1
    80006574:	38e78a63          	beq	a5,a4,80006908 <__printf+0x460>
    80006578:	20f76863          	bltu	a4,a5,80006788 <__printf+0x2e0>
    8000657c:	42a78863          	beq	a5,a0,800069ac <__printf+0x504>
    80006580:	06400713          	li	a4,100
    80006584:	40e79663          	bne	a5,a4,80006990 <__printf+0x4e8>
    80006588:	f7843783          	ld	a5,-136(s0)
    8000658c:	0007a603          	lw	a2,0(a5)
    80006590:	00878793          	addi	a5,a5,8
    80006594:	f6f43c23          	sd	a5,-136(s0)
    80006598:	42064a63          	bltz	a2,800069cc <__printf+0x524>
    8000659c:	00a00713          	li	a4,10
    800065a0:	02e677bb          	remuw	a5,a2,a4
    800065a4:	00002d97          	auipc	s11,0x2
    800065a8:	fecd8d93          	addi	s11,s11,-20 # 80008590 <digits>
    800065ac:	00900593          	li	a1,9
    800065b0:	0006051b          	sext.w	a0,a2
    800065b4:	00000c93          	li	s9,0
    800065b8:	02079793          	slli	a5,a5,0x20
    800065bc:	0207d793          	srli	a5,a5,0x20
    800065c0:	00fd87b3          	add	a5,s11,a5
    800065c4:	0007c783          	lbu	a5,0(a5)
    800065c8:	02e656bb          	divuw	a3,a2,a4
    800065cc:	f8f40023          	sb	a5,-128(s0)
    800065d0:	14c5d863          	bge	a1,a2,80006720 <__printf+0x278>
    800065d4:	06300593          	li	a1,99
    800065d8:	00100c93          	li	s9,1
    800065dc:	02e6f7bb          	remuw	a5,a3,a4
    800065e0:	02079793          	slli	a5,a5,0x20
    800065e4:	0207d793          	srli	a5,a5,0x20
    800065e8:	00fd87b3          	add	a5,s11,a5
    800065ec:	0007c783          	lbu	a5,0(a5)
    800065f0:	02e6d73b          	divuw	a4,a3,a4
    800065f4:	f8f400a3          	sb	a5,-127(s0)
    800065f8:	12a5f463          	bgeu	a1,a0,80006720 <__printf+0x278>
    800065fc:	00a00693          	li	a3,10
    80006600:	00900593          	li	a1,9
    80006604:	02d777bb          	remuw	a5,a4,a3
    80006608:	02079793          	slli	a5,a5,0x20
    8000660c:	0207d793          	srli	a5,a5,0x20
    80006610:	00fd87b3          	add	a5,s11,a5
    80006614:	0007c503          	lbu	a0,0(a5)
    80006618:	02d757bb          	divuw	a5,a4,a3
    8000661c:	f8a40123          	sb	a0,-126(s0)
    80006620:	48e5f263          	bgeu	a1,a4,80006aa4 <__printf+0x5fc>
    80006624:	06300513          	li	a0,99
    80006628:	02d7f5bb          	remuw	a1,a5,a3
    8000662c:	02059593          	slli	a1,a1,0x20
    80006630:	0205d593          	srli	a1,a1,0x20
    80006634:	00bd85b3          	add	a1,s11,a1
    80006638:	0005c583          	lbu	a1,0(a1)
    8000663c:	02d7d7bb          	divuw	a5,a5,a3
    80006640:	f8b401a3          	sb	a1,-125(s0)
    80006644:	48e57263          	bgeu	a0,a4,80006ac8 <__printf+0x620>
    80006648:	3e700513          	li	a0,999
    8000664c:	02d7f5bb          	remuw	a1,a5,a3
    80006650:	02059593          	slli	a1,a1,0x20
    80006654:	0205d593          	srli	a1,a1,0x20
    80006658:	00bd85b3          	add	a1,s11,a1
    8000665c:	0005c583          	lbu	a1,0(a1)
    80006660:	02d7d7bb          	divuw	a5,a5,a3
    80006664:	f8b40223          	sb	a1,-124(s0)
    80006668:	46e57663          	bgeu	a0,a4,80006ad4 <__printf+0x62c>
    8000666c:	02d7f5bb          	remuw	a1,a5,a3
    80006670:	02059593          	slli	a1,a1,0x20
    80006674:	0205d593          	srli	a1,a1,0x20
    80006678:	00bd85b3          	add	a1,s11,a1
    8000667c:	0005c583          	lbu	a1,0(a1)
    80006680:	02d7d7bb          	divuw	a5,a5,a3
    80006684:	f8b402a3          	sb	a1,-123(s0)
    80006688:	46ea7863          	bgeu	s4,a4,80006af8 <__printf+0x650>
    8000668c:	02d7f5bb          	remuw	a1,a5,a3
    80006690:	02059593          	slli	a1,a1,0x20
    80006694:	0205d593          	srli	a1,a1,0x20
    80006698:	00bd85b3          	add	a1,s11,a1
    8000669c:	0005c583          	lbu	a1,0(a1)
    800066a0:	02d7d7bb          	divuw	a5,a5,a3
    800066a4:	f8b40323          	sb	a1,-122(s0)
    800066a8:	3eeaf863          	bgeu	s5,a4,80006a98 <__printf+0x5f0>
    800066ac:	02d7f5bb          	remuw	a1,a5,a3
    800066b0:	02059593          	slli	a1,a1,0x20
    800066b4:	0205d593          	srli	a1,a1,0x20
    800066b8:	00bd85b3          	add	a1,s11,a1
    800066bc:	0005c583          	lbu	a1,0(a1)
    800066c0:	02d7d7bb          	divuw	a5,a5,a3
    800066c4:	f8b403a3          	sb	a1,-121(s0)
    800066c8:	42eb7e63          	bgeu	s6,a4,80006b04 <__printf+0x65c>
    800066cc:	02d7f5bb          	remuw	a1,a5,a3
    800066d0:	02059593          	slli	a1,a1,0x20
    800066d4:	0205d593          	srli	a1,a1,0x20
    800066d8:	00bd85b3          	add	a1,s11,a1
    800066dc:	0005c583          	lbu	a1,0(a1)
    800066e0:	02d7d7bb          	divuw	a5,a5,a3
    800066e4:	f8b40423          	sb	a1,-120(s0)
    800066e8:	42ebfc63          	bgeu	s7,a4,80006b20 <__printf+0x678>
    800066ec:	02079793          	slli	a5,a5,0x20
    800066f0:	0207d793          	srli	a5,a5,0x20
    800066f4:	00fd8db3          	add	s11,s11,a5
    800066f8:	000dc703          	lbu	a4,0(s11)
    800066fc:	00a00793          	li	a5,10
    80006700:	00900c93          	li	s9,9
    80006704:	f8e404a3          	sb	a4,-119(s0)
    80006708:	00065c63          	bgez	a2,80006720 <__printf+0x278>
    8000670c:	f9040713          	addi	a4,s0,-112
    80006710:	00f70733          	add	a4,a4,a5
    80006714:	02d00693          	li	a3,45
    80006718:	fed70823          	sb	a3,-16(a4)
    8000671c:	00078c93          	mv	s9,a5
    80006720:	f8040793          	addi	a5,s0,-128
    80006724:	01978cb3          	add	s9,a5,s9
    80006728:	f7f40d13          	addi	s10,s0,-129
    8000672c:	000cc503          	lbu	a0,0(s9)
    80006730:	fffc8c93          	addi	s9,s9,-1
    80006734:	00000097          	auipc	ra,0x0
    80006738:	b90080e7          	jalr	-1136(ra) # 800062c4 <consputc>
    8000673c:	ffac98e3          	bne	s9,s10,8000672c <__printf+0x284>
    80006740:	00094503          	lbu	a0,0(s2)
    80006744:	e00514e3          	bnez	a0,8000654c <__printf+0xa4>
    80006748:	1a0c1663          	bnez	s8,800068f4 <__printf+0x44c>
    8000674c:	08813083          	ld	ra,136(sp)
    80006750:	08013403          	ld	s0,128(sp)
    80006754:	07813483          	ld	s1,120(sp)
    80006758:	07013903          	ld	s2,112(sp)
    8000675c:	06813983          	ld	s3,104(sp)
    80006760:	06013a03          	ld	s4,96(sp)
    80006764:	05813a83          	ld	s5,88(sp)
    80006768:	05013b03          	ld	s6,80(sp)
    8000676c:	04813b83          	ld	s7,72(sp)
    80006770:	04013c03          	ld	s8,64(sp)
    80006774:	03813c83          	ld	s9,56(sp)
    80006778:	03013d03          	ld	s10,48(sp)
    8000677c:	02813d83          	ld	s11,40(sp)
    80006780:	0d010113          	addi	sp,sp,208
    80006784:	00008067          	ret
    80006788:	07300713          	li	a4,115
    8000678c:	1ce78a63          	beq	a5,a4,80006960 <__printf+0x4b8>
    80006790:	07800713          	li	a4,120
    80006794:	1ee79e63          	bne	a5,a4,80006990 <__printf+0x4e8>
    80006798:	f7843783          	ld	a5,-136(s0)
    8000679c:	0007a703          	lw	a4,0(a5)
    800067a0:	00878793          	addi	a5,a5,8
    800067a4:	f6f43c23          	sd	a5,-136(s0)
    800067a8:	28074263          	bltz	a4,80006a2c <__printf+0x584>
    800067ac:	00002d97          	auipc	s11,0x2
    800067b0:	de4d8d93          	addi	s11,s11,-540 # 80008590 <digits>
    800067b4:	00f77793          	andi	a5,a4,15
    800067b8:	00fd87b3          	add	a5,s11,a5
    800067bc:	0007c683          	lbu	a3,0(a5)
    800067c0:	00f00613          	li	a2,15
    800067c4:	0007079b          	sext.w	a5,a4
    800067c8:	f8d40023          	sb	a3,-128(s0)
    800067cc:	0047559b          	srliw	a1,a4,0x4
    800067d0:	0047569b          	srliw	a3,a4,0x4
    800067d4:	00000c93          	li	s9,0
    800067d8:	0ee65063          	bge	a2,a4,800068b8 <__printf+0x410>
    800067dc:	00f6f693          	andi	a3,a3,15
    800067e0:	00dd86b3          	add	a3,s11,a3
    800067e4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800067e8:	0087d79b          	srliw	a5,a5,0x8
    800067ec:	00100c93          	li	s9,1
    800067f0:	f8d400a3          	sb	a3,-127(s0)
    800067f4:	0cb67263          	bgeu	a2,a1,800068b8 <__printf+0x410>
    800067f8:	00f7f693          	andi	a3,a5,15
    800067fc:	00dd86b3          	add	a3,s11,a3
    80006800:	0006c583          	lbu	a1,0(a3)
    80006804:	00f00613          	li	a2,15
    80006808:	0047d69b          	srliw	a3,a5,0x4
    8000680c:	f8b40123          	sb	a1,-126(s0)
    80006810:	0047d593          	srli	a1,a5,0x4
    80006814:	28f67e63          	bgeu	a2,a5,80006ab0 <__printf+0x608>
    80006818:	00f6f693          	andi	a3,a3,15
    8000681c:	00dd86b3          	add	a3,s11,a3
    80006820:	0006c503          	lbu	a0,0(a3)
    80006824:	0087d813          	srli	a6,a5,0x8
    80006828:	0087d69b          	srliw	a3,a5,0x8
    8000682c:	f8a401a3          	sb	a0,-125(s0)
    80006830:	28b67663          	bgeu	a2,a1,80006abc <__printf+0x614>
    80006834:	00f6f693          	andi	a3,a3,15
    80006838:	00dd86b3          	add	a3,s11,a3
    8000683c:	0006c583          	lbu	a1,0(a3)
    80006840:	00c7d513          	srli	a0,a5,0xc
    80006844:	00c7d69b          	srliw	a3,a5,0xc
    80006848:	f8b40223          	sb	a1,-124(s0)
    8000684c:	29067a63          	bgeu	a2,a6,80006ae0 <__printf+0x638>
    80006850:	00f6f693          	andi	a3,a3,15
    80006854:	00dd86b3          	add	a3,s11,a3
    80006858:	0006c583          	lbu	a1,0(a3)
    8000685c:	0107d813          	srli	a6,a5,0x10
    80006860:	0107d69b          	srliw	a3,a5,0x10
    80006864:	f8b402a3          	sb	a1,-123(s0)
    80006868:	28a67263          	bgeu	a2,a0,80006aec <__printf+0x644>
    8000686c:	00f6f693          	andi	a3,a3,15
    80006870:	00dd86b3          	add	a3,s11,a3
    80006874:	0006c683          	lbu	a3,0(a3)
    80006878:	0147d79b          	srliw	a5,a5,0x14
    8000687c:	f8d40323          	sb	a3,-122(s0)
    80006880:	21067663          	bgeu	a2,a6,80006a8c <__printf+0x5e4>
    80006884:	02079793          	slli	a5,a5,0x20
    80006888:	0207d793          	srli	a5,a5,0x20
    8000688c:	00fd8db3          	add	s11,s11,a5
    80006890:	000dc683          	lbu	a3,0(s11)
    80006894:	00800793          	li	a5,8
    80006898:	00700c93          	li	s9,7
    8000689c:	f8d403a3          	sb	a3,-121(s0)
    800068a0:	00075c63          	bgez	a4,800068b8 <__printf+0x410>
    800068a4:	f9040713          	addi	a4,s0,-112
    800068a8:	00f70733          	add	a4,a4,a5
    800068ac:	02d00693          	li	a3,45
    800068b0:	fed70823          	sb	a3,-16(a4)
    800068b4:	00078c93          	mv	s9,a5
    800068b8:	f8040793          	addi	a5,s0,-128
    800068bc:	01978cb3          	add	s9,a5,s9
    800068c0:	f7f40d13          	addi	s10,s0,-129
    800068c4:	000cc503          	lbu	a0,0(s9)
    800068c8:	fffc8c93          	addi	s9,s9,-1
    800068cc:	00000097          	auipc	ra,0x0
    800068d0:	9f8080e7          	jalr	-1544(ra) # 800062c4 <consputc>
    800068d4:	ff9d18e3          	bne	s10,s9,800068c4 <__printf+0x41c>
    800068d8:	0100006f          	j	800068e8 <__printf+0x440>
    800068dc:	00000097          	auipc	ra,0x0
    800068e0:	9e8080e7          	jalr	-1560(ra) # 800062c4 <consputc>
    800068e4:	000c8493          	mv	s1,s9
    800068e8:	00094503          	lbu	a0,0(s2)
    800068ec:	c60510e3          	bnez	a0,8000654c <__printf+0xa4>
    800068f0:	e40c0ee3          	beqz	s8,8000674c <__printf+0x2a4>
    800068f4:	00009517          	auipc	a0,0x9
    800068f8:	e9c50513          	addi	a0,a0,-356 # 8000f790 <pr>
    800068fc:	00001097          	auipc	ra,0x1
    80006900:	94c080e7          	jalr	-1716(ra) # 80007248 <release>
    80006904:	e49ff06f          	j	8000674c <__printf+0x2a4>
    80006908:	f7843783          	ld	a5,-136(s0)
    8000690c:	03000513          	li	a0,48
    80006910:	01000d13          	li	s10,16
    80006914:	00878713          	addi	a4,a5,8
    80006918:	0007bc83          	ld	s9,0(a5)
    8000691c:	f6e43c23          	sd	a4,-136(s0)
    80006920:	00000097          	auipc	ra,0x0
    80006924:	9a4080e7          	jalr	-1628(ra) # 800062c4 <consputc>
    80006928:	07800513          	li	a0,120
    8000692c:	00000097          	auipc	ra,0x0
    80006930:	998080e7          	jalr	-1640(ra) # 800062c4 <consputc>
    80006934:	00002d97          	auipc	s11,0x2
    80006938:	c5cd8d93          	addi	s11,s11,-932 # 80008590 <digits>
    8000693c:	03ccd793          	srli	a5,s9,0x3c
    80006940:	00fd87b3          	add	a5,s11,a5
    80006944:	0007c503          	lbu	a0,0(a5)
    80006948:	fffd0d1b          	addiw	s10,s10,-1
    8000694c:	004c9c93          	slli	s9,s9,0x4
    80006950:	00000097          	auipc	ra,0x0
    80006954:	974080e7          	jalr	-1676(ra) # 800062c4 <consputc>
    80006958:	fe0d12e3          	bnez	s10,8000693c <__printf+0x494>
    8000695c:	f8dff06f          	j	800068e8 <__printf+0x440>
    80006960:	f7843783          	ld	a5,-136(s0)
    80006964:	0007bc83          	ld	s9,0(a5)
    80006968:	00878793          	addi	a5,a5,8
    8000696c:	f6f43c23          	sd	a5,-136(s0)
    80006970:	000c9a63          	bnez	s9,80006984 <__printf+0x4dc>
    80006974:	1080006f          	j	80006a7c <__printf+0x5d4>
    80006978:	001c8c93          	addi	s9,s9,1
    8000697c:	00000097          	auipc	ra,0x0
    80006980:	948080e7          	jalr	-1720(ra) # 800062c4 <consputc>
    80006984:	000cc503          	lbu	a0,0(s9)
    80006988:	fe0518e3          	bnez	a0,80006978 <__printf+0x4d0>
    8000698c:	f5dff06f          	j	800068e8 <__printf+0x440>
    80006990:	02500513          	li	a0,37
    80006994:	00000097          	auipc	ra,0x0
    80006998:	930080e7          	jalr	-1744(ra) # 800062c4 <consputc>
    8000699c:	000c8513          	mv	a0,s9
    800069a0:	00000097          	auipc	ra,0x0
    800069a4:	924080e7          	jalr	-1756(ra) # 800062c4 <consputc>
    800069a8:	f41ff06f          	j	800068e8 <__printf+0x440>
    800069ac:	02500513          	li	a0,37
    800069b0:	00000097          	auipc	ra,0x0
    800069b4:	914080e7          	jalr	-1772(ra) # 800062c4 <consputc>
    800069b8:	f31ff06f          	j	800068e8 <__printf+0x440>
    800069bc:	00030513          	mv	a0,t1
    800069c0:	00000097          	auipc	ra,0x0
    800069c4:	7bc080e7          	jalr	1980(ra) # 8000717c <acquire>
    800069c8:	b4dff06f          	j	80006514 <__printf+0x6c>
    800069cc:	40c0053b          	negw	a0,a2
    800069d0:	00a00713          	li	a4,10
    800069d4:	02e576bb          	remuw	a3,a0,a4
    800069d8:	00002d97          	auipc	s11,0x2
    800069dc:	bb8d8d93          	addi	s11,s11,-1096 # 80008590 <digits>
    800069e0:	ff700593          	li	a1,-9
    800069e4:	02069693          	slli	a3,a3,0x20
    800069e8:	0206d693          	srli	a3,a3,0x20
    800069ec:	00dd86b3          	add	a3,s11,a3
    800069f0:	0006c683          	lbu	a3,0(a3)
    800069f4:	02e557bb          	divuw	a5,a0,a4
    800069f8:	f8d40023          	sb	a3,-128(s0)
    800069fc:	10b65e63          	bge	a2,a1,80006b18 <__printf+0x670>
    80006a00:	06300593          	li	a1,99
    80006a04:	02e7f6bb          	remuw	a3,a5,a4
    80006a08:	02069693          	slli	a3,a3,0x20
    80006a0c:	0206d693          	srli	a3,a3,0x20
    80006a10:	00dd86b3          	add	a3,s11,a3
    80006a14:	0006c683          	lbu	a3,0(a3)
    80006a18:	02e7d73b          	divuw	a4,a5,a4
    80006a1c:	00200793          	li	a5,2
    80006a20:	f8d400a3          	sb	a3,-127(s0)
    80006a24:	bca5ece3          	bltu	a1,a0,800065fc <__printf+0x154>
    80006a28:	ce5ff06f          	j	8000670c <__printf+0x264>
    80006a2c:	40e007bb          	negw	a5,a4
    80006a30:	00002d97          	auipc	s11,0x2
    80006a34:	b60d8d93          	addi	s11,s11,-1184 # 80008590 <digits>
    80006a38:	00f7f693          	andi	a3,a5,15
    80006a3c:	00dd86b3          	add	a3,s11,a3
    80006a40:	0006c583          	lbu	a1,0(a3)
    80006a44:	ff100613          	li	a2,-15
    80006a48:	0047d69b          	srliw	a3,a5,0x4
    80006a4c:	f8b40023          	sb	a1,-128(s0)
    80006a50:	0047d59b          	srliw	a1,a5,0x4
    80006a54:	0ac75e63          	bge	a4,a2,80006b10 <__printf+0x668>
    80006a58:	00f6f693          	andi	a3,a3,15
    80006a5c:	00dd86b3          	add	a3,s11,a3
    80006a60:	0006c603          	lbu	a2,0(a3)
    80006a64:	00f00693          	li	a3,15
    80006a68:	0087d79b          	srliw	a5,a5,0x8
    80006a6c:	f8c400a3          	sb	a2,-127(s0)
    80006a70:	d8b6e4e3          	bltu	a3,a1,800067f8 <__printf+0x350>
    80006a74:	00200793          	li	a5,2
    80006a78:	e2dff06f          	j	800068a4 <__printf+0x3fc>
    80006a7c:	00002c97          	auipc	s9,0x2
    80006a80:	af4c8c93          	addi	s9,s9,-1292 # 80008570 <CONSOLE_STATUS+0x560>
    80006a84:	02800513          	li	a0,40
    80006a88:	ef1ff06f          	j	80006978 <__printf+0x4d0>
    80006a8c:	00700793          	li	a5,7
    80006a90:	00600c93          	li	s9,6
    80006a94:	e0dff06f          	j	800068a0 <__printf+0x3f8>
    80006a98:	00700793          	li	a5,7
    80006a9c:	00600c93          	li	s9,6
    80006aa0:	c69ff06f          	j	80006708 <__printf+0x260>
    80006aa4:	00300793          	li	a5,3
    80006aa8:	00200c93          	li	s9,2
    80006aac:	c5dff06f          	j	80006708 <__printf+0x260>
    80006ab0:	00300793          	li	a5,3
    80006ab4:	00200c93          	li	s9,2
    80006ab8:	de9ff06f          	j	800068a0 <__printf+0x3f8>
    80006abc:	00400793          	li	a5,4
    80006ac0:	00300c93          	li	s9,3
    80006ac4:	dddff06f          	j	800068a0 <__printf+0x3f8>
    80006ac8:	00400793          	li	a5,4
    80006acc:	00300c93          	li	s9,3
    80006ad0:	c39ff06f          	j	80006708 <__printf+0x260>
    80006ad4:	00500793          	li	a5,5
    80006ad8:	00400c93          	li	s9,4
    80006adc:	c2dff06f          	j	80006708 <__printf+0x260>
    80006ae0:	00500793          	li	a5,5
    80006ae4:	00400c93          	li	s9,4
    80006ae8:	db9ff06f          	j	800068a0 <__printf+0x3f8>
    80006aec:	00600793          	li	a5,6
    80006af0:	00500c93          	li	s9,5
    80006af4:	dadff06f          	j	800068a0 <__printf+0x3f8>
    80006af8:	00600793          	li	a5,6
    80006afc:	00500c93          	li	s9,5
    80006b00:	c09ff06f          	j	80006708 <__printf+0x260>
    80006b04:	00800793          	li	a5,8
    80006b08:	00700c93          	li	s9,7
    80006b0c:	bfdff06f          	j	80006708 <__printf+0x260>
    80006b10:	00100793          	li	a5,1
    80006b14:	d91ff06f          	j	800068a4 <__printf+0x3fc>
    80006b18:	00100793          	li	a5,1
    80006b1c:	bf1ff06f          	j	8000670c <__printf+0x264>
    80006b20:	00900793          	li	a5,9
    80006b24:	00800c93          	li	s9,8
    80006b28:	be1ff06f          	j	80006708 <__printf+0x260>
    80006b2c:	00002517          	auipc	a0,0x2
    80006b30:	a4c50513          	addi	a0,a0,-1460 # 80008578 <CONSOLE_STATUS+0x568>
    80006b34:	00000097          	auipc	ra,0x0
    80006b38:	918080e7          	jalr	-1768(ra) # 8000644c <panic>

0000000080006b3c <printfinit>:
    80006b3c:	fe010113          	addi	sp,sp,-32
    80006b40:	00813823          	sd	s0,16(sp)
    80006b44:	00913423          	sd	s1,8(sp)
    80006b48:	00113c23          	sd	ra,24(sp)
    80006b4c:	02010413          	addi	s0,sp,32
    80006b50:	00009497          	auipc	s1,0x9
    80006b54:	c4048493          	addi	s1,s1,-960 # 8000f790 <pr>
    80006b58:	00048513          	mv	a0,s1
    80006b5c:	00002597          	auipc	a1,0x2
    80006b60:	a2c58593          	addi	a1,a1,-1492 # 80008588 <CONSOLE_STATUS+0x578>
    80006b64:	00000097          	auipc	ra,0x0
    80006b68:	5f4080e7          	jalr	1524(ra) # 80007158 <initlock>
    80006b6c:	01813083          	ld	ra,24(sp)
    80006b70:	01013403          	ld	s0,16(sp)
    80006b74:	0004ac23          	sw	zero,24(s1)
    80006b78:	00813483          	ld	s1,8(sp)
    80006b7c:	02010113          	addi	sp,sp,32
    80006b80:	00008067          	ret

0000000080006b84 <uartinit>:
    80006b84:	ff010113          	addi	sp,sp,-16
    80006b88:	00813423          	sd	s0,8(sp)
    80006b8c:	01010413          	addi	s0,sp,16
    80006b90:	100007b7          	lui	a5,0x10000
    80006b94:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006b98:	f8000713          	li	a4,-128
    80006b9c:	00e781a3          	sb	a4,3(a5)
    80006ba0:	00300713          	li	a4,3
    80006ba4:	00e78023          	sb	a4,0(a5)
    80006ba8:	000780a3          	sb	zero,1(a5)
    80006bac:	00e781a3          	sb	a4,3(a5)
    80006bb0:	00700693          	li	a3,7
    80006bb4:	00d78123          	sb	a3,2(a5)
    80006bb8:	00e780a3          	sb	a4,1(a5)
    80006bbc:	00813403          	ld	s0,8(sp)
    80006bc0:	01010113          	addi	sp,sp,16
    80006bc4:	00008067          	ret

0000000080006bc8 <uartputc>:
    80006bc8:	00004797          	auipc	a5,0x4
    80006bcc:	8c07a783          	lw	a5,-1856(a5) # 8000a488 <panicked>
    80006bd0:	00078463          	beqz	a5,80006bd8 <uartputc+0x10>
    80006bd4:	0000006f          	j	80006bd4 <uartputc+0xc>
    80006bd8:	fd010113          	addi	sp,sp,-48
    80006bdc:	02813023          	sd	s0,32(sp)
    80006be0:	00913c23          	sd	s1,24(sp)
    80006be4:	01213823          	sd	s2,16(sp)
    80006be8:	01313423          	sd	s3,8(sp)
    80006bec:	02113423          	sd	ra,40(sp)
    80006bf0:	03010413          	addi	s0,sp,48
    80006bf4:	00004917          	auipc	s2,0x4
    80006bf8:	89c90913          	addi	s2,s2,-1892 # 8000a490 <uart_tx_r>
    80006bfc:	00093783          	ld	a5,0(s2)
    80006c00:	00004497          	auipc	s1,0x4
    80006c04:	89848493          	addi	s1,s1,-1896 # 8000a498 <uart_tx_w>
    80006c08:	0004b703          	ld	a4,0(s1)
    80006c0c:	02078693          	addi	a3,a5,32
    80006c10:	00050993          	mv	s3,a0
    80006c14:	02e69c63          	bne	a3,a4,80006c4c <uartputc+0x84>
    80006c18:	00001097          	auipc	ra,0x1
    80006c1c:	834080e7          	jalr	-1996(ra) # 8000744c <push_on>
    80006c20:	00093783          	ld	a5,0(s2)
    80006c24:	0004b703          	ld	a4,0(s1)
    80006c28:	02078793          	addi	a5,a5,32
    80006c2c:	00e79463          	bne	a5,a4,80006c34 <uartputc+0x6c>
    80006c30:	0000006f          	j	80006c30 <uartputc+0x68>
    80006c34:	00001097          	auipc	ra,0x1
    80006c38:	88c080e7          	jalr	-1908(ra) # 800074c0 <pop_on>
    80006c3c:	00093783          	ld	a5,0(s2)
    80006c40:	0004b703          	ld	a4,0(s1)
    80006c44:	02078693          	addi	a3,a5,32
    80006c48:	fce688e3          	beq	a3,a4,80006c18 <uartputc+0x50>
    80006c4c:	01f77693          	andi	a3,a4,31
    80006c50:	00009597          	auipc	a1,0x9
    80006c54:	b6058593          	addi	a1,a1,-1184 # 8000f7b0 <uart_tx_buf>
    80006c58:	00d586b3          	add	a3,a1,a3
    80006c5c:	00170713          	addi	a4,a4,1
    80006c60:	01368023          	sb	s3,0(a3)
    80006c64:	00e4b023          	sd	a4,0(s1)
    80006c68:	10000637          	lui	a2,0x10000
    80006c6c:	02f71063          	bne	a4,a5,80006c8c <uartputc+0xc4>
    80006c70:	0340006f          	j	80006ca4 <uartputc+0xdc>
    80006c74:	00074703          	lbu	a4,0(a4)
    80006c78:	00f93023          	sd	a5,0(s2)
    80006c7c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006c80:	00093783          	ld	a5,0(s2)
    80006c84:	0004b703          	ld	a4,0(s1)
    80006c88:	00f70e63          	beq	a4,a5,80006ca4 <uartputc+0xdc>
    80006c8c:	00564683          	lbu	a3,5(a2)
    80006c90:	01f7f713          	andi	a4,a5,31
    80006c94:	00e58733          	add	a4,a1,a4
    80006c98:	0206f693          	andi	a3,a3,32
    80006c9c:	00178793          	addi	a5,a5,1
    80006ca0:	fc069ae3          	bnez	a3,80006c74 <uartputc+0xac>
    80006ca4:	02813083          	ld	ra,40(sp)
    80006ca8:	02013403          	ld	s0,32(sp)
    80006cac:	01813483          	ld	s1,24(sp)
    80006cb0:	01013903          	ld	s2,16(sp)
    80006cb4:	00813983          	ld	s3,8(sp)
    80006cb8:	03010113          	addi	sp,sp,48
    80006cbc:	00008067          	ret

0000000080006cc0 <uartputc_sync>:
    80006cc0:	ff010113          	addi	sp,sp,-16
    80006cc4:	00813423          	sd	s0,8(sp)
    80006cc8:	01010413          	addi	s0,sp,16
    80006ccc:	00003717          	auipc	a4,0x3
    80006cd0:	7bc72703          	lw	a4,1980(a4) # 8000a488 <panicked>
    80006cd4:	02071663          	bnez	a4,80006d00 <uartputc_sync+0x40>
    80006cd8:	00050793          	mv	a5,a0
    80006cdc:	100006b7          	lui	a3,0x10000
    80006ce0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006ce4:	02077713          	andi	a4,a4,32
    80006ce8:	fe070ce3          	beqz	a4,80006ce0 <uartputc_sync+0x20>
    80006cec:	0ff7f793          	andi	a5,a5,255
    80006cf0:	00f68023          	sb	a5,0(a3)
    80006cf4:	00813403          	ld	s0,8(sp)
    80006cf8:	01010113          	addi	sp,sp,16
    80006cfc:	00008067          	ret
    80006d00:	0000006f          	j	80006d00 <uartputc_sync+0x40>

0000000080006d04 <uartstart>:
    80006d04:	ff010113          	addi	sp,sp,-16
    80006d08:	00813423          	sd	s0,8(sp)
    80006d0c:	01010413          	addi	s0,sp,16
    80006d10:	00003617          	auipc	a2,0x3
    80006d14:	78060613          	addi	a2,a2,1920 # 8000a490 <uart_tx_r>
    80006d18:	00003517          	auipc	a0,0x3
    80006d1c:	78050513          	addi	a0,a0,1920 # 8000a498 <uart_tx_w>
    80006d20:	00063783          	ld	a5,0(a2)
    80006d24:	00053703          	ld	a4,0(a0)
    80006d28:	04f70263          	beq	a4,a5,80006d6c <uartstart+0x68>
    80006d2c:	100005b7          	lui	a1,0x10000
    80006d30:	00009817          	auipc	a6,0x9
    80006d34:	a8080813          	addi	a6,a6,-1408 # 8000f7b0 <uart_tx_buf>
    80006d38:	01c0006f          	j	80006d54 <uartstart+0x50>
    80006d3c:	0006c703          	lbu	a4,0(a3)
    80006d40:	00f63023          	sd	a5,0(a2)
    80006d44:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006d48:	00063783          	ld	a5,0(a2)
    80006d4c:	00053703          	ld	a4,0(a0)
    80006d50:	00f70e63          	beq	a4,a5,80006d6c <uartstart+0x68>
    80006d54:	01f7f713          	andi	a4,a5,31
    80006d58:	00e806b3          	add	a3,a6,a4
    80006d5c:	0055c703          	lbu	a4,5(a1)
    80006d60:	00178793          	addi	a5,a5,1
    80006d64:	02077713          	andi	a4,a4,32
    80006d68:	fc071ae3          	bnez	a4,80006d3c <uartstart+0x38>
    80006d6c:	00813403          	ld	s0,8(sp)
    80006d70:	01010113          	addi	sp,sp,16
    80006d74:	00008067          	ret

0000000080006d78 <uartgetc>:
    80006d78:	ff010113          	addi	sp,sp,-16
    80006d7c:	00813423          	sd	s0,8(sp)
    80006d80:	01010413          	addi	s0,sp,16
    80006d84:	10000737          	lui	a4,0x10000
    80006d88:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80006d8c:	0017f793          	andi	a5,a5,1
    80006d90:	00078c63          	beqz	a5,80006da8 <uartgetc+0x30>
    80006d94:	00074503          	lbu	a0,0(a4)
    80006d98:	0ff57513          	andi	a0,a0,255
    80006d9c:	00813403          	ld	s0,8(sp)
    80006da0:	01010113          	addi	sp,sp,16
    80006da4:	00008067          	ret
    80006da8:	fff00513          	li	a0,-1
    80006dac:	ff1ff06f          	j	80006d9c <uartgetc+0x24>

0000000080006db0 <uartintr>:
    80006db0:	100007b7          	lui	a5,0x10000
    80006db4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006db8:	0017f793          	andi	a5,a5,1
    80006dbc:	0a078463          	beqz	a5,80006e64 <uartintr+0xb4>
    80006dc0:	fe010113          	addi	sp,sp,-32
    80006dc4:	00813823          	sd	s0,16(sp)
    80006dc8:	00913423          	sd	s1,8(sp)
    80006dcc:	00113c23          	sd	ra,24(sp)
    80006dd0:	02010413          	addi	s0,sp,32
    80006dd4:	100004b7          	lui	s1,0x10000
    80006dd8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80006ddc:	0ff57513          	andi	a0,a0,255
    80006de0:	fffff097          	auipc	ra,0xfffff
    80006de4:	534080e7          	jalr	1332(ra) # 80006314 <consoleintr>
    80006de8:	0054c783          	lbu	a5,5(s1)
    80006dec:	0017f793          	andi	a5,a5,1
    80006df0:	fe0794e3          	bnez	a5,80006dd8 <uartintr+0x28>
    80006df4:	00003617          	auipc	a2,0x3
    80006df8:	69c60613          	addi	a2,a2,1692 # 8000a490 <uart_tx_r>
    80006dfc:	00003517          	auipc	a0,0x3
    80006e00:	69c50513          	addi	a0,a0,1692 # 8000a498 <uart_tx_w>
    80006e04:	00063783          	ld	a5,0(a2)
    80006e08:	00053703          	ld	a4,0(a0)
    80006e0c:	04f70263          	beq	a4,a5,80006e50 <uartintr+0xa0>
    80006e10:	100005b7          	lui	a1,0x10000
    80006e14:	00009817          	auipc	a6,0x9
    80006e18:	99c80813          	addi	a6,a6,-1636 # 8000f7b0 <uart_tx_buf>
    80006e1c:	01c0006f          	j	80006e38 <uartintr+0x88>
    80006e20:	0006c703          	lbu	a4,0(a3)
    80006e24:	00f63023          	sd	a5,0(a2)
    80006e28:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006e2c:	00063783          	ld	a5,0(a2)
    80006e30:	00053703          	ld	a4,0(a0)
    80006e34:	00f70e63          	beq	a4,a5,80006e50 <uartintr+0xa0>
    80006e38:	01f7f713          	andi	a4,a5,31
    80006e3c:	00e806b3          	add	a3,a6,a4
    80006e40:	0055c703          	lbu	a4,5(a1)
    80006e44:	00178793          	addi	a5,a5,1
    80006e48:	02077713          	andi	a4,a4,32
    80006e4c:	fc071ae3          	bnez	a4,80006e20 <uartintr+0x70>
    80006e50:	01813083          	ld	ra,24(sp)
    80006e54:	01013403          	ld	s0,16(sp)
    80006e58:	00813483          	ld	s1,8(sp)
    80006e5c:	02010113          	addi	sp,sp,32
    80006e60:	00008067          	ret
    80006e64:	00003617          	auipc	a2,0x3
    80006e68:	62c60613          	addi	a2,a2,1580 # 8000a490 <uart_tx_r>
    80006e6c:	00003517          	auipc	a0,0x3
    80006e70:	62c50513          	addi	a0,a0,1580 # 8000a498 <uart_tx_w>
    80006e74:	00063783          	ld	a5,0(a2)
    80006e78:	00053703          	ld	a4,0(a0)
    80006e7c:	04f70263          	beq	a4,a5,80006ec0 <uartintr+0x110>
    80006e80:	100005b7          	lui	a1,0x10000
    80006e84:	00009817          	auipc	a6,0x9
    80006e88:	92c80813          	addi	a6,a6,-1748 # 8000f7b0 <uart_tx_buf>
    80006e8c:	01c0006f          	j	80006ea8 <uartintr+0xf8>
    80006e90:	0006c703          	lbu	a4,0(a3)
    80006e94:	00f63023          	sd	a5,0(a2)
    80006e98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006e9c:	00063783          	ld	a5,0(a2)
    80006ea0:	00053703          	ld	a4,0(a0)
    80006ea4:	02f70063          	beq	a4,a5,80006ec4 <uartintr+0x114>
    80006ea8:	01f7f713          	andi	a4,a5,31
    80006eac:	00e806b3          	add	a3,a6,a4
    80006eb0:	0055c703          	lbu	a4,5(a1)
    80006eb4:	00178793          	addi	a5,a5,1
    80006eb8:	02077713          	andi	a4,a4,32
    80006ebc:	fc071ae3          	bnez	a4,80006e90 <uartintr+0xe0>
    80006ec0:	00008067          	ret
    80006ec4:	00008067          	ret

0000000080006ec8 <kinit>:
    80006ec8:	fc010113          	addi	sp,sp,-64
    80006ecc:	02913423          	sd	s1,40(sp)
    80006ed0:	fffff7b7          	lui	a5,0xfffff
    80006ed4:	0000a497          	auipc	s1,0xa
    80006ed8:	8fb48493          	addi	s1,s1,-1797 # 800107cf <end+0xfff>
    80006edc:	02813823          	sd	s0,48(sp)
    80006ee0:	01313c23          	sd	s3,24(sp)
    80006ee4:	00f4f4b3          	and	s1,s1,a5
    80006ee8:	02113c23          	sd	ra,56(sp)
    80006eec:	03213023          	sd	s2,32(sp)
    80006ef0:	01413823          	sd	s4,16(sp)
    80006ef4:	01513423          	sd	s5,8(sp)
    80006ef8:	04010413          	addi	s0,sp,64
    80006efc:	000017b7          	lui	a5,0x1
    80006f00:	01100993          	li	s3,17
    80006f04:	00f487b3          	add	a5,s1,a5
    80006f08:	01b99993          	slli	s3,s3,0x1b
    80006f0c:	06f9e063          	bltu	s3,a5,80006f6c <kinit+0xa4>
    80006f10:	00009a97          	auipc	s5,0x9
    80006f14:	8c0a8a93          	addi	s5,s5,-1856 # 8000f7d0 <end>
    80006f18:	0754ec63          	bltu	s1,s5,80006f90 <kinit+0xc8>
    80006f1c:	0734fa63          	bgeu	s1,s3,80006f90 <kinit+0xc8>
    80006f20:	00088a37          	lui	s4,0x88
    80006f24:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006f28:	00003917          	auipc	s2,0x3
    80006f2c:	57890913          	addi	s2,s2,1400 # 8000a4a0 <kmem>
    80006f30:	00ca1a13          	slli	s4,s4,0xc
    80006f34:	0140006f          	j	80006f48 <kinit+0x80>
    80006f38:	000017b7          	lui	a5,0x1
    80006f3c:	00f484b3          	add	s1,s1,a5
    80006f40:	0554e863          	bltu	s1,s5,80006f90 <kinit+0xc8>
    80006f44:	0534f663          	bgeu	s1,s3,80006f90 <kinit+0xc8>
    80006f48:	00001637          	lui	a2,0x1
    80006f4c:	00100593          	li	a1,1
    80006f50:	00048513          	mv	a0,s1
    80006f54:	00000097          	auipc	ra,0x0
    80006f58:	5e4080e7          	jalr	1508(ra) # 80007538 <__memset>
    80006f5c:	00093783          	ld	a5,0(s2)
    80006f60:	00f4b023          	sd	a5,0(s1)
    80006f64:	00993023          	sd	s1,0(s2)
    80006f68:	fd4498e3          	bne	s1,s4,80006f38 <kinit+0x70>
    80006f6c:	03813083          	ld	ra,56(sp)
    80006f70:	03013403          	ld	s0,48(sp)
    80006f74:	02813483          	ld	s1,40(sp)
    80006f78:	02013903          	ld	s2,32(sp)
    80006f7c:	01813983          	ld	s3,24(sp)
    80006f80:	01013a03          	ld	s4,16(sp)
    80006f84:	00813a83          	ld	s5,8(sp)
    80006f88:	04010113          	addi	sp,sp,64
    80006f8c:	00008067          	ret
    80006f90:	00001517          	auipc	a0,0x1
    80006f94:	61850513          	addi	a0,a0,1560 # 800085a8 <digits+0x18>
    80006f98:	fffff097          	auipc	ra,0xfffff
    80006f9c:	4b4080e7          	jalr	1204(ra) # 8000644c <panic>

0000000080006fa0 <freerange>:
    80006fa0:	fc010113          	addi	sp,sp,-64
    80006fa4:	000017b7          	lui	a5,0x1
    80006fa8:	02913423          	sd	s1,40(sp)
    80006fac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006fb0:	009504b3          	add	s1,a0,s1
    80006fb4:	fffff537          	lui	a0,0xfffff
    80006fb8:	02813823          	sd	s0,48(sp)
    80006fbc:	02113c23          	sd	ra,56(sp)
    80006fc0:	03213023          	sd	s2,32(sp)
    80006fc4:	01313c23          	sd	s3,24(sp)
    80006fc8:	01413823          	sd	s4,16(sp)
    80006fcc:	01513423          	sd	s5,8(sp)
    80006fd0:	01613023          	sd	s6,0(sp)
    80006fd4:	04010413          	addi	s0,sp,64
    80006fd8:	00a4f4b3          	and	s1,s1,a0
    80006fdc:	00f487b3          	add	a5,s1,a5
    80006fe0:	06f5e463          	bltu	a1,a5,80007048 <freerange+0xa8>
    80006fe4:	00008a97          	auipc	s5,0x8
    80006fe8:	7eca8a93          	addi	s5,s5,2028 # 8000f7d0 <end>
    80006fec:	0954e263          	bltu	s1,s5,80007070 <freerange+0xd0>
    80006ff0:	01100993          	li	s3,17
    80006ff4:	01b99993          	slli	s3,s3,0x1b
    80006ff8:	0734fc63          	bgeu	s1,s3,80007070 <freerange+0xd0>
    80006ffc:	00058a13          	mv	s4,a1
    80007000:	00003917          	auipc	s2,0x3
    80007004:	4a090913          	addi	s2,s2,1184 # 8000a4a0 <kmem>
    80007008:	00002b37          	lui	s6,0x2
    8000700c:	0140006f          	j	80007020 <freerange+0x80>
    80007010:	000017b7          	lui	a5,0x1
    80007014:	00f484b3          	add	s1,s1,a5
    80007018:	0554ec63          	bltu	s1,s5,80007070 <freerange+0xd0>
    8000701c:	0534fa63          	bgeu	s1,s3,80007070 <freerange+0xd0>
    80007020:	00001637          	lui	a2,0x1
    80007024:	00100593          	li	a1,1
    80007028:	00048513          	mv	a0,s1
    8000702c:	00000097          	auipc	ra,0x0
    80007030:	50c080e7          	jalr	1292(ra) # 80007538 <__memset>
    80007034:	00093703          	ld	a4,0(s2)
    80007038:	016487b3          	add	a5,s1,s6
    8000703c:	00e4b023          	sd	a4,0(s1)
    80007040:	00993023          	sd	s1,0(s2)
    80007044:	fcfa76e3          	bgeu	s4,a5,80007010 <freerange+0x70>
    80007048:	03813083          	ld	ra,56(sp)
    8000704c:	03013403          	ld	s0,48(sp)
    80007050:	02813483          	ld	s1,40(sp)
    80007054:	02013903          	ld	s2,32(sp)
    80007058:	01813983          	ld	s3,24(sp)
    8000705c:	01013a03          	ld	s4,16(sp)
    80007060:	00813a83          	ld	s5,8(sp)
    80007064:	00013b03          	ld	s6,0(sp)
    80007068:	04010113          	addi	sp,sp,64
    8000706c:	00008067          	ret
    80007070:	00001517          	auipc	a0,0x1
    80007074:	53850513          	addi	a0,a0,1336 # 800085a8 <digits+0x18>
    80007078:	fffff097          	auipc	ra,0xfffff
    8000707c:	3d4080e7          	jalr	980(ra) # 8000644c <panic>

0000000080007080 <kfree>:
    80007080:	fe010113          	addi	sp,sp,-32
    80007084:	00813823          	sd	s0,16(sp)
    80007088:	00113c23          	sd	ra,24(sp)
    8000708c:	00913423          	sd	s1,8(sp)
    80007090:	02010413          	addi	s0,sp,32
    80007094:	03451793          	slli	a5,a0,0x34
    80007098:	04079c63          	bnez	a5,800070f0 <kfree+0x70>
    8000709c:	00008797          	auipc	a5,0x8
    800070a0:	73478793          	addi	a5,a5,1844 # 8000f7d0 <end>
    800070a4:	00050493          	mv	s1,a0
    800070a8:	04f56463          	bltu	a0,a5,800070f0 <kfree+0x70>
    800070ac:	01100793          	li	a5,17
    800070b0:	01b79793          	slli	a5,a5,0x1b
    800070b4:	02f57e63          	bgeu	a0,a5,800070f0 <kfree+0x70>
    800070b8:	00001637          	lui	a2,0x1
    800070bc:	00100593          	li	a1,1
    800070c0:	00000097          	auipc	ra,0x0
    800070c4:	478080e7          	jalr	1144(ra) # 80007538 <__memset>
    800070c8:	00003797          	auipc	a5,0x3
    800070cc:	3d878793          	addi	a5,a5,984 # 8000a4a0 <kmem>
    800070d0:	0007b703          	ld	a4,0(a5)
    800070d4:	01813083          	ld	ra,24(sp)
    800070d8:	01013403          	ld	s0,16(sp)
    800070dc:	00e4b023          	sd	a4,0(s1)
    800070e0:	0097b023          	sd	s1,0(a5)
    800070e4:	00813483          	ld	s1,8(sp)
    800070e8:	02010113          	addi	sp,sp,32
    800070ec:	00008067          	ret
    800070f0:	00001517          	auipc	a0,0x1
    800070f4:	4b850513          	addi	a0,a0,1208 # 800085a8 <digits+0x18>
    800070f8:	fffff097          	auipc	ra,0xfffff
    800070fc:	354080e7          	jalr	852(ra) # 8000644c <panic>

0000000080007100 <kalloc>:
    80007100:	fe010113          	addi	sp,sp,-32
    80007104:	00813823          	sd	s0,16(sp)
    80007108:	00913423          	sd	s1,8(sp)
    8000710c:	00113c23          	sd	ra,24(sp)
    80007110:	02010413          	addi	s0,sp,32
    80007114:	00003797          	auipc	a5,0x3
    80007118:	38c78793          	addi	a5,a5,908 # 8000a4a0 <kmem>
    8000711c:	0007b483          	ld	s1,0(a5)
    80007120:	02048063          	beqz	s1,80007140 <kalloc+0x40>
    80007124:	0004b703          	ld	a4,0(s1)
    80007128:	00001637          	lui	a2,0x1
    8000712c:	00500593          	li	a1,5
    80007130:	00048513          	mv	a0,s1
    80007134:	00e7b023          	sd	a4,0(a5)
    80007138:	00000097          	auipc	ra,0x0
    8000713c:	400080e7          	jalr	1024(ra) # 80007538 <__memset>
    80007140:	01813083          	ld	ra,24(sp)
    80007144:	01013403          	ld	s0,16(sp)
    80007148:	00048513          	mv	a0,s1
    8000714c:	00813483          	ld	s1,8(sp)
    80007150:	02010113          	addi	sp,sp,32
    80007154:	00008067          	ret

0000000080007158 <initlock>:
    80007158:	ff010113          	addi	sp,sp,-16
    8000715c:	00813423          	sd	s0,8(sp)
    80007160:	01010413          	addi	s0,sp,16
    80007164:	00813403          	ld	s0,8(sp)
    80007168:	00b53423          	sd	a1,8(a0)
    8000716c:	00052023          	sw	zero,0(a0)
    80007170:	00053823          	sd	zero,16(a0)
    80007174:	01010113          	addi	sp,sp,16
    80007178:	00008067          	ret

000000008000717c <acquire>:
    8000717c:	fe010113          	addi	sp,sp,-32
    80007180:	00813823          	sd	s0,16(sp)
    80007184:	00913423          	sd	s1,8(sp)
    80007188:	00113c23          	sd	ra,24(sp)
    8000718c:	01213023          	sd	s2,0(sp)
    80007190:	02010413          	addi	s0,sp,32
    80007194:	00050493          	mv	s1,a0
    80007198:	10002973          	csrr	s2,sstatus
    8000719c:	100027f3          	csrr	a5,sstatus
    800071a0:	ffd7f793          	andi	a5,a5,-3
    800071a4:	10079073          	csrw	sstatus,a5
    800071a8:	fffff097          	auipc	ra,0xfffff
    800071ac:	8e8080e7          	jalr	-1816(ra) # 80005a90 <mycpu>
    800071b0:	07852783          	lw	a5,120(a0)
    800071b4:	06078e63          	beqz	a5,80007230 <acquire+0xb4>
    800071b8:	fffff097          	auipc	ra,0xfffff
    800071bc:	8d8080e7          	jalr	-1832(ra) # 80005a90 <mycpu>
    800071c0:	07852783          	lw	a5,120(a0)
    800071c4:	0004a703          	lw	a4,0(s1)
    800071c8:	0017879b          	addiw	a5,a5,1
    800071cc:	06f52c23          	sw	a5,120(a0)
    800071d0:	04071063          	bnez	a4,80007210 <acquire+0x94>
    800071d4:	00100713          	li	a4,1
    800071d8:	00070793          	mv	a5,a4
    800071dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800071e0:	0007879b          	sext.w	a5,a5
    800071e4:	fe079ae3          	bnez	a5,800071d8 <acquire+0x5c>
    800071e8:	0ff0000f          	fence
    800071ec:	fffff097          	auipc	ra,0xfffff
    800071f0:	8a4080e7          	jalr	-1884(ra) # 80005a90 <mycpu>
    800071f4:	01813083          	ld	ra,24(sp)
    800071f8:	01013403          	ld	s0,16(sp)
    800071fc:	00a4b823          	sd	a0,16(s1)
    80007200:	00013903          	ld	s2,0(sp)
    80007204:	00813483          	ld	s1,8(sp)
    80007208:	02010113          	addi	sp,sp,32
    8000720c:	00008067          	ret
    80007210:	0104b903          	ld	s2,16(s1)
    80007214:	fffff097          	auipc	ra,0xfffff
    80007218:	87c080e7          	jalr	-1924(ra) # 80005a90 <mycpu>
    8000721c:	faa91ce3          	bne	s2,a0,800071d4 <acquire+0x58>
    80007220:	00001517          	auipc	a0,0x1
    80007224:	39050513          	addi	a0,a0,912 # 800085b0 <digits+0x20>
    80007228:	fffff097          	auipc	ra,0xfffff
    8000722c:	224080e7          	jalr	548(ra) # 8000644c <panic>
    80007230:	00195913          	srli	s2,s2,0x1
    80007234:	fffff097          	auipc	ra,0xfffff
    80007238:	85c080e7          	jalr	-1956(ra) # 80005a90 <mycpu>
    8000723c:	00197913          	andi	s2,s2,1
    80007240:	07252e23          	sw	s2,124(a0)
    80007244:	f75ff06f          	j	800071b8 <acquire+0x3c>

0000000080007248 <release>:
    80007248:	fe010113          	addi	sp,sp,-32
    8000724c:	00813823          	sd	s0,16(sp)
    80007250:	00113c23          	sd	ra,24(sp)
    80007254:	00913423          	sd	s1,8(sp)
    80007258:	01213023          	sd	s2,0(sp)
    8000725c:	02010413          	addi	s0,sp,32
    80007260:	00052783          	lw	a5,0(a0)
    80007264:	00079a63          	bnez	a5,80007278 <release+0x30>
    80007268:	00001517          	auipc	a0,0x1
    8000726c:	35050513          	addi	a0,a0,848 # 800085b8 <digits+0x28>
    80007270:	fffff097          	auipc	ra,0xfffff
    80007274:	1dc080e7          	jalr	476(ra) # 8000644c <panic>
    80007278:	01053903          	ld	s2,16(a0)
    8000727c:	00050493          	mv	s1,a0
    80007280:	fffff097          	auipc	ra,0xfffff
    80007284:	810080e7          	jalr	-2032(ra) # 80005a90 <mycpu>
    80007288:	fea910e3          	bne	s2,a0,80007268 <release+0x20>
    8000728c:	0004b823          	sd	zero,16(s1)
    80007290:	0ff0000f          	fence
    80007294:	0f50000f          	fence	iorw,ow
    80007298:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000729c:	ffffe097          	auipc	ra,0xffffe
    800072a0:	7f4080e7          	jalr	2036(ra) # 80005a90 <mycpu>
    800072a4:	100027f3          	csrr	a5,sstatus
    800072a8:	0027f793          	andi	a5,a5,2
    800072ac:	04079a63          	bnez	a5,80007300 <release+0xb8>
    800072b0:	07852783          	lw	a5,120(a0)
    800072b4:	02f05e63          	blez	a5,800072f0 <release+0xa8>
    800072b8:	fff7871b          	addiw	a4,a5,-1
    800072bc:	06e52c23          	sw	a4,120(a0)
    800072c0:	00071c63          	bnez	a4,800072d8 <release+0x90>
    800072c4:	07c52783          	lw	a5,124(a0)
    800072c8:	00078863          	beqz	a5,800072d8 <release+0x90>
    800072cc:	100027f3          	csrr	a5,sstatus
    800072d0:	0027e793          	ori	a5,a5,2
    800072d4:	10079073          	csrw	sstatus,a5
    800072d8:	01813083          	ld	ra,24(sp)
    800072dc:	01013403          	ld	s0,16(sp)
    800072e0:	00813483          	ld	s1,8(sp)
    800072e4:	00013903          	ld	s2,0(sp)
    800072e8:	02010113          	addi	sp,sp,32
    800072ec:	00008067          	ret
    800072f0:	00001517          	auipc	a0,0x1
    800072f4:	2e850513          	addi	a0,a0,744 # 800085d8 <digits+0x48>
    800072f8:	fffff097          	auipc	ra,0xfffff
    800072fc:	154080e7          	jalr	340(ra) # 8000644c <panic>
    80007300:	00001517          	auipc	a0,0x1
    80007304:	2c050513          	addi	a0,a0,704 # 800085c0 <digits+0x30>
    80007308:	fffff097          	auipc	ra,0xfffff
    8000730c:	144080e7          	jalr	324(ra) # 8000644c <panic>

0000000080007310 <holding>:
    80007310:	00052783          	lw	a5,0(a0)
    80007314:	00079663          	bnez	a5,80007320 <holding+0x10>
    80007318:	00000513          	li	a0,0
    8000731c:	00008067          	ret
    80007320:	fe010113          	addi	sp,sp,-32
    80007324:	00813823          	sd	s0,16(sp)
    80007328:	00913423          	sd	s1,8(sp)
    8000732c:	00113c23          	sd	ra,24(sp)
    80007330:	02010413          	addi	s0,sp,32
    80007334:	01053483          	ld	s1,16(a0)
    80007338:	ffffe097          	auipc	ra,0xffffe
    8000733c:	758080e7          	jalr	1880(ra) # 80005a90 <mycpu>
    80007340:	01813083          	ld	ra,24(sp)
    80007344:	01013403          	ld	s0,16(sp)
    80007348:	40a48533          	sub	a0,s1,a0
    8000734c:	00153513          	seqz	a0,a0
    80007350:	00813483          	ld	s1,8(sp)
    80007354:	02010113          	addi	sp,sp,32
    80007358:	00008067          	ret

000000008000735c <push_off>:
    8000735c:	fe010113          	addi	sp,sp,-32
    80007360:	00813823          	sd	s0,16(sp)
    80007364:	00113c23          	sd	ra,24(sp)
    80007368:	00913423          	sd	s1,8(sp)
    8000736c:	02010413          	addi	s0,sp,32
    80007370:	100024f3          	csrr	s1,sstatus
    80007374:	100027f3          	csrr	a5,sstatus
    80007378:	ffd7f793          	andi	a5,a5,-3
    8000737c:	10079073          	csrw	sstatus,a5
    80007380:	ffffe097          	auipc	ra,0xffffe
    80007384:	710080e7          	jalr	1808(ra) # 80005a90 <mycpu>
    80007388:	07852783          	lw	a5,120(a0)
    8000738c:	02078663          	beqz	a5,800073b8 <push_off+0x5c>
    80007390:	ffffe097          	auipc	ra,0xffffe
    80007394:	700080e7          	jalr	1792(ra) # 80005a90 <mycpu>
    80007398:	07852783          	lw	a5,120(a0)
    8000739c:	01813083          	ld	ra,24(sp)
    800073a0:	01013403          	ld	s0,16(sp)
    800073a4:	0017879b          	addiw	a5,a5,1
    800073a8:	06f52c23          	sw	a5,120(a0)
    800073ac:	00813483          	ld	s1,8(sp)
    800073b0:	02010113          	addi	sp,sp,32
    800073b4:	00008067          	ret
    800073b8:	0014d493          	srli	s1,s1,0x1
    800073bc:	ffffe097          	auipc	ra,0xffffe
    800073c0:	6d4080e7          	jalr	1748(ra) # 80005a90 <mycpu>
    800073c4:	0014f493          	andi	s1,s1,1
    800073c8:	06952e23          	sw	s1,124(a0)
    800073cc:	fc5ff06f          	j	80007390 <push_off+0x34>

00000000800073d0 <pop_off>:
    800073d0:	ff010113          	addi	sp,sp,-16
    800073d4:	00813023          	sd	s0,0(sp)
    800073d8:	00113423          	sd	ra,8(sp)
    800073dc:	01010413          	addi	s0,sp,16
    800073e0:	ffffe097          	auipc	ra,0xffffe
    800073e4:	6b0080e7          	jalr	1712(ra) # 80005a90 <mycpu>
    800073e8:	100027f3          	csrr	a5,sstatus
    800073ec:	0027f793          	andi	a5,a5,2
    800073f0:	04079663          	bnez	a5,8000743c <pop_off+0x6c>
    800073f4:	07852783          	lw	a5,120(a0)
    800073f8:	02f05a63          	blez	a5,8000742c <pop_off+0x5c>
    800073fc:	fff7871b          	addiw	a4,a5,-1
    80007400:	06e52c23          	sw	a4,120(a0)
    80007404:	00071c63          	bnez	a4,8000741c <pop_off+0x4c>
    80007408:	07c52783          	lw	a5,124(a0)
    8000740c:	00078863          	beqz	a5,8000741c <pop_off+0x4c>
    80007410:	100027f3          	csrr	a5,sstatus
    80007414:	0027e793          	ori	a5,a5,2
    80007418:	10079073          	csrw	sstatus,a5
    8000741c:	00813083          	ld	ra,8(sp)
    80007420:	00013403          	ld	s0,0(sp)
    80007424:	01010113          	addi	sp,sp,16
    80007428:	00008067          	ret
    8000742c:	00001517          	auipc	a0,0x1
    80007430:	1ac50513          	addi	a0,a0,428 # 800085d8 <digits+0x48>
    80007434:	fffff097          	auipc	ra,0xfffff
    80007438:	018080e7          	jalr	24(ra) # 8000644c <panic>
    8000743c:	00001517          	auipc	a0,0x1
    80007440:	18450513          	addi	a0,a0,388 # 800085c0 <digits+0x30>
    80007444:	fffff097          	auipc	ra,0xfffff
    80007448:	008080e7          	jalr	8(ra) # 8000644c <panic>

000000008000744c <push_on>:
    8000744c:	fe010113          	addi	sp,sp,-32
    80007450:	00813823          	sd	s0,16(sp)
    80007454:	00113c23          	sd	ra,24(sp)
    80007458:	00913423          	sd	s1,8(sp)
    8000745c:	02010413          	addi	s0,sp,32
    80007460:	100024f3          	csrr	s1,sstatus
    80007464:	100027f3          	csrr	a5,sstatus
    80007468:	0027e793          	ori	a5,a5,2
    8000746c:	10079073          	csrw	sstatus,a5
    80007470:	ffffe097          	auipc	ra,0xffffe
    80007474:	620080e7          	jalr	1568(ra) # 80005a90 <mycpu>
    80007478:	07852783          	lw	a5,120(a0)
    8000747c:	02078663          	beqz	a5,800074a8 <push_on+0x5c>
    80007480:	ffffe097          	auipc	ra,0xffffe
    80007484:	610080e7          	jalr	1552(ra) # 80005a90 <mycpu>
    80007488:	07852783          	lw	a5,120(a0)
    8000748c:	01813083          	ld	ra,24(sp)
    80007490:	01013403          	ld	s0,16(sp)
    80007494:	0017879b          	addiw	a5,a5,1
    80007498:	06f52c23          	sw	a5,120(a0)
    8000749c:	00813483          	ld	s1,8(sp)
    800074a0:	02010113          	addi	sp,sp,32
    800074a4:	00008067          	ret
    800074a8:	0014d493          	srli	s1,s1,0x1
    800074ac:	ffffe097          	auipc	ra,0xffffe
    800074b0:	5e4080e7          	jalr	1508(ra) # 80005a90 <mycpu>
    800074b4:	0014f493          	andi	s1,s1,1
    800074b8:	06952e23          	sw	s1,124(a0)
    800074bc:	fc5ff06f          	j	80007480 <push_on+0x34>

00000000800074c0 <pop_on>:
    800074c0:	ff010113          	addi	sp,sp,-16
    800074c4:	00813023          	sd	s0,0(sp)
    800074c8:	00113423          	sd	ra,8(sp)
    800074cc:	01010413          	addi	s0,sp,16
    800074d0:	ffffe097          	auipc	ra,0xffffe
    800074d4:	5c0080e7          	jalr	1472(ra) # 80005a90 <mycpu>
    800074d8:	100027f3          	csrr	a5,sstatus
    800074dc:	0027f793          	andi	a5,a5,2
    800074e0:	04078463          	beqz	a5,80007528 <pop_on+0x68>
    800074e4:	07852783          	lw	a5,120(a0)
    800074e8:	02f05863          	blez	a5,80007518 <pop_on+0x58>
    800074ec:	fff7879b          	addiw	a5,a5,-1
    800074f0:	06f52c23          	sw	a5,120(a0)
    800074f4:	07853783          	ld	a5,120(a0)
    800074f8:	00079863          	bnez	a5,80007508 <pop_on+0x48>
    800074fc:	100027f3          	csrr	a5,sstatus
    80007500:	ffd7f793          	andi	a5,a5,-3
    80007504:	10079073          	csrw	sstatus,a5
    80007508:	00813083          	ld	ra,8(sp)
    8000750c:	00013403          	ld	s0,0(sp)
    80007510:	01010113          	addi	sp,sp,16
    80007514:	00008067          	ret
    80007518:	00001517          	auipc	a0,0x1
    8000751c:	0e850513          	addi	a0,a0,232 # 80008600 <digits+0x70>
    80007520:	fffff097          	auipc	ra,0xfffff
    80007524:	f2c080e7          	jalr	-212(ra) # 8000644c <panic>
    80007528:	00001517          	auipc	a0,0x1
    8000752c:	0b850513          	addi	a0,a0,184 # 800085e0 <digits+0x50>
    80007530:	fffff097          	auipc	ra,0xfffff
    80007534:	f1c080e7          	jalr	-228(ra) # 8000644c <panic>

0000000080007538 <__memset>:
    80007538:	ff010113          	addi	sp,sp,-16
    8000753c:	00813423          	sd	s0,8(sp)
    80007540:	01010413          	addi	s0,sp,16
    80007544:	1a060e63          	beqz	a2,80007700 <__memset+0x1c8>
    80007548:	40a007b3          	neg	a5,a0
    8000754c:	0077f793          	andi	a5,a5,7
    80007550:	00778693          	addi	a3,a5,7
    80007554:	00b00813          	li	a6,11
    80007558:	0ff5f593          	andi	a1,a1,255
    8000755c:	fff6071b          	addiw	a4,a2,-1
    80007560:	1b06e663          	bltu	a3,a6,8000770c <__memset+0x1d4>
    80007564:	1cd76463          	bltu	a4,a3,8000772c <__memset+0x1f4>
    80007568:	1a078e63          	beqz	a5,80007724 <__memset+0x1ec>
    8000756c:	00b50023          	sb	a1,0(a0)
    80007570:	00100713          	li	a4,1
    80007574:	1ae78463          	beq	a5,a4,8000771c <__memset+0x1e4>
    80007578:	00b500a3          	sb	a1,1(a0)
    8000757c:	00200713          	li	a4,2
    80007580:	1ae78a63          	beq	a5,a4,80007734 <__memset+0x1fc>
    80007584:	00b50123          	sb	a1,2(a0)
    80007588:	00300713          	li	a4,3
    8000758c:	18e78463          	beq	a5,a4,80007714 <__memset+0x1dc>
    80007590:	00b501a3          	sb	a1,3(a0)
    80007594:	00400713          	li	a4,4
    80007598:	1ae78263          	beq	a5,a4,8000773c <__memset+0x204>
    8000759c:	00b50223          	sb	a1,4(a0)
    800075a0:	00500713          	li	a4,5
    800075a4:	1ae78063          	beq	a5,a4,80007744 <__memset+0x20c>
    800075a8:	00b502a3          	sb	a1,5(a0)
    800075ac:	00700713          	li	a4,7
    800075b0:	18e79e63          	bne	a5,a4,8000774c <__memset+0x214>
    800075b4:	00b50323          	sb	a1,6(a0)
    800075b8:	00700e93          	li	t4,7
    800075bc:	00859713          	slli	a4,a1,0x8
    800075c0:	00e5e733          	or	a4,a1,a4
    800075c4:	01059e13          	slli	t3,a1,0x10
    800075c8:	01c76e33          	or	t3,a4,t3
    800075cc:	01859313          	slli	t1,a1,0x18
    800075d0:	006e6333          	or	t1,t3,t1
    800075d4:	02059893          	slli	a7,a1,0x20
    800075d8:	40f60e3b          	subw	t3,a2,a5
    800075dc:	011368b3          	or	a7,t1,a7
    800075e0:	02859813          	slli	a6,a1,0x28
    800075e4:	0108e833          	or	a6,a7,a6
    800075e8:	03059693          	slli	a3,a1,0x30
    800075ec:	003e589b          	srliw	a7,t3,0x3
    800075f0:	00d866b3          	or	a3,a6,a3
    800075f4:	03859713          	slli	a4,a1,0x38
    800075f8:	00389813          	slli	a6,a7,0x3
    800075fc:	00f507b3          	add	a5,a0,a5
    80007600:	00e6e733          	or	a4,a3,a4
    80007604:	000e089b          	sext.w	a7,t3
    80007608:	00f806b3          	add	a3,a6,a5
    8000760c:	00e7b023          	sd	a4,0(a5)
    80007610:	00878793          	addi	a5,a5,8
    80007614:	fed79ce3          	bne	a5,a3,8000760c <__memset+0xd4>
    80007618:	ff8e7793          	andi	a5,t3,-8
    8000761c:	0007871b          	sext.w	a4,a5
    80007620:	01d787bb          	addw	a5,a5,t4
    80007624:	0ce88e63          	beq	a7,a4,80007700 <__memset+0x1c8>
    80007628:	00f50733          	add	a4,a0,a5
    8000762c:	00b70023          	sb	a1,0(a4)
    80007630:	0017871b          	addiw	a4,a5,1
    80007634:	0cc77663          	bgeu	a4,a2,80007700 <__memset+0x1c8>
    80007638:	00e50733          	add	a4,a0,a4
    8000763c:	00b70023          	sb	a1,0(a4)
    80007640:	0027871b          	addiw	a4,a5,2
    80007644:	0ac77e63          	bgeu	a4,a2,80007700 <__memset+0x1c8>
    80007648:	00e50733          	add	a4,a0,a4
    8000764c:	00b70023          	sb	a1,0(a4)
    80007650:	0037871b          	addiw	a4,a5,3
    80007654:	0ac77663          	bgeu	a4,a2,80007700 <__memset+0x1c8>
    80007658:	00e50733          	add	a4,a0,a4
    8000765c:	00b70023          	sb	a1,0(a4)
    80007660:	0047871b          	addiw	a4,a5,4
    80007664:	08c77e63          	bgeu	a4,a2,80007700 <__memset+0x1c8>
    80007668:	00e50733          	add	a4,a0,a4
    8000766c:	00b70023          	sb	a1,0(a4)
    80007670:	0057871b          	addiw	a4,a5,5
    80007674:	08c77663          	bgeu	a4,a2,80007700 <__memset+0x1c8>
    80007678:	00e50733          	add	a4,a0,a4
    8000767c:	00b70023          	sb	a1,0(a4)
    80007680:	0067871b          	addiw	a4,a5,6
    80007684:	06c77e63          	bgeu	a4,a2,80007700 <__memset+0x1c8>
    80007688:	00e50733          	add	a4,a0,a4
    8000768c:	00b70023          	sb	a1,0(a4)
    80007690:	0077871b          	addiw	a4,a5,7
    80007694:	06c77663          	bgeu	a4,a2,80007700 <__memset+0x1c8>
    80007698:	00e50733          	add	a4,a0,a4
    8000769c:	00b70023          	sb	a1,0(a4)
    800076a0:	0087871b          	addiw	a4,a5,8
    800076a4:	04c77e63          	bgeu	a4,a2,80007700 <__memset+0x1c8>
    800076a8:	00e50733          	add	a4,a0,a4
    800076ac:	00b70023          	sb	a1,0(a4)
    800076b0:	0097871b          	addiw	a4,a5,9
    800076b4:	04c77663          	bgeu	a4,a2,80007700 <__memset+0x1c8>
    800076b8:	00e50733          	add	a4,a0,a4
    800076bc:	00b70023          	sb	a1,0(a4)
    800076c0:	00a7871b          	addiw	a4,a5,10
    800076c4:	02c77e63          	bgeu	a4,a2,80007700 <__memset+0x1c8>
    800076c8:	00e50733          	add	a4,a0,a4
    800076cc:	00b70023          	sb	a1,0(a4)
    800076d0:	00b7871b          	addiw	a4,a5,11
    800076d4:	02c77663          	bgeu	a4,a2,80007700 <__memset+0x1c8>
    800076d8:	00e50733          	add	a4,a0,a4
    800076dc:	00b70023          	sb	a1,0(a4)
    800076e0:	00c7871b          	addiw	a4,a5,12
    800076e4:	00c77e63          	bgeu	a4,a2,80007700 <__memset+0x1c8>
    800076e8:	00e50733          	add	a4,a0,a4
    800076ec:	00b70023          	sb	a1,0(a4)
    800076f0:	00d7879b          	addiw	a5,a5,13
    800076f4:	00c7f663          	bgeu	a5,a2,80007700 <__memset+0x1c8>
    800076f8:	00f507b3          	add	a5,a0,a5
    800076fc:	00b78023          	sb	a1,0(a5)
    80007700:	00813403          	ld	s0,8(sp)
    80007704:	01010113          	addi	sp,sp,16
    80007708:	00008067          	ret
    8000770c:	00b00693          	li	a3,11
    80007710:	e55ff06f          	j	80007564 <__memset+0x2c>
    80007714:	00300e93          	li	t4,3
    80007718:	ea5ff06f          	j	800075bc <__memset+0x84>
    8000771c:	00100e93          	li	t4,1
    80007720:	e9dff06f          	j	800075bc <__memset+0x84>
    80007724:	00000e93          	li	t4,0
    80007728:	e95ff06f          	j	800075bc <__memset+0x84>
    8000772c:	00000793          	li	a5,0
    80007730:	ef9ff06f          	j	80007628 <__memset+0xf0>
    80007734:	00200e93          	li	t4,2
    80007738:	e85ff06f          	j	800075bc <__memset+0x84>
    8000773c:	00400e93          	li	t4,4
    80007740:	e7dff06f          	j	800075bc <__memset+0x84>
    80007744:	00500e93          	li	t4,5
    80007748:	e75ff06f          	j	800075bc <__memset+0x84>
    8000774c:	00600e93          	li	t4,6
    80007750:	e6dff06f          	j	800075bc <__memset+0x84>

0000000080007754 <__memmove>:
    80007754:	ff010113          	addi	sp,sp,-16
    80007758:	00813423          	sd	s0,8(sp)
    8000775c:	01010413          	addi	s0,sp,16
    80007760:	0e060863          	beqz	a2,80007850 <__memmove+0xfc>
    80007764:	fff6069b          	addiw	a3,a2,-1
    80007768:	0006881b          	sext.w	a6,a3
    8000776c:	0ea5e863          	bltu	a1,a0,8000785c <__memmove+0x108>
    80007770:	00758713          	addi	a4,a1,7
    80007774:	00a5e7b3          	or	a5,a1,a0
    80007778:	40a70733          	sub	a4,a4,a0
    8000777c:	0077f793          	andi	a5,a5,7
    80007780:	00f73713          	sltiu	a4,a4,15
    80007784:	00174713          	xori	a4,a4,1
    80007788:	0017b793          	seqz	a5,a5
    8000778c:	00e7f7b3          	and	a5,a5,a4
    80007790:	10078863          	beqz	a5,800078a0 <__memmove+0x14c>
    80007794:	00900793          	li	a5,9
    80007798:	1107f463          	bgeu	a5,a6,800078a0 <__memmove+0x14c>
    8000779c:	0036581b          	srliw	a6,a2,0x3
    800077a0:	fff8081b          	addiw	a6,a6,-1
    800077a4:	02081813          	slli	a6,a6,0x20
    800077a8:	01d85893          	srli	a7,a6,0x1d
    800077ac:	00858813          	addi	a6,a1,8
    800077b0:	00058793          	mv	a5,a1
    800077b4:	00050713          	mv	a4,a0
    800077b8:	01088833          	add	a6,a7,a6
    800077bc:	0007b883          	ld	a7,0(a5)
    800077c0:	00878793          	addi	a5,a5,8
    800077c4:	00870713          	addi	a4,a4,8
    800077c8:	ff173c23          	sd	a7,-8(a4)
    800077cc:	ff0798e3          	bne	a5,a6,800077bc <__memmove+0x68>
    800077d0:	ff867713          	andi	a4,a2,-8
    800077d4:	02071793          	slli	a5,a4,0x20
    800077d8:	0207d793          	srli	a5,a5,0x20
    800077dc:	00f585b3          	add	a1,a1,a5
    800077e0:	40e686bb          	subw	a3,a3,a4
    800077e4:	00f507b3          	add	a5,a0,a5
    800077e8:	06e60463          	beq	a2,a4,80007850 <__memmove+0xfc>
    800077ec:	0005c703          	lbu	a4,0(a1)
    800077f0:	00e78023          	sb	a4,0(a5)
    800077f4:	04068e63          	beqz	a3,80007850 <__memmove+0xfc>
    800077f8:	0015c603          	lbu	a2,1(a1)
    800077fc:	00100713          	li	a4,1
    80007800:	00c780a3          	sb	a2,1(a5)
    80007804:	04e68663          	beq	a3,a4,80007850 <__memmove+0xfc>
    80007808:	0025c603          	lbu	a2,2(a1)
    8000780c:	00200713          	li	a4,2
    80007810:	00c78123          	sb	a2,2(a5)
    80007814:	02e68e63          	beq	a3,a4,80007850 <__memmove+0xfc>
    80007818:	0035c603          	lbu	a2,3(a1)
    8000781c:	00300713          	li	a4,3
    80007820:	00c781a3          	sb	a2,3(a5)
    80007824:	02e68663          	beq	a3,a4,80007850 <__memmove+0xfc>
    80007828:	0045c603          	lbu	a2,4(a1)
    8000782c:	00400713          	li	a4,4
    80007830:	00c78223          	sb	a2,4(a5)
    80007834:	00e68e63          	beq	a3,a4,80007850 <__memmove+0xfc>
    80007838:	0055c603          	lbu	a2,5(a1)
    8000783c:	00500713          	li	a4,5
    80007840:	00c782a3          	sb	a2,5(a5)
    80007844:	00e68663          	beq	a3,a4,80007850 <__memmove+0xfc>
    80007848:	0065c703          	lbu	a4,6(a1)
    8000784c:	00e78323          	sb	a4,6(a5)
    80007850:	00813403          	ld	s0,8(sp)
    80007854:	01010113          	addi	sp,sp,16
    80007858:	00008067          	ret
    8000785c:	02061713          	slli	a4,a2,0x20
    80007860:	02075713          	srli	a4,a4,0x20
    80007864:	00e587b3          	add	a5,a1,a4
    80007868:	f0f574e3          	bgeu	a0,a5,80007770 <__memmove+0x1c>
    8000786c:	02069613          	slli	a2,a3,0x20
    80007870:	02065613          	srli	a2,a2,0x20
    80007874:	fff64613          	not	a2,a2
    80007878:	00e50733          	add	a4,a0,a4
    8000787c:	00c78633          	add	a2,a5,a2
    80007880:	fff7c683          	lbu	a3,-1(a5)
    80007884:	fff78793          	addi	a5,a5,-1
    80007888:	fff70713          	addi	a4,a4,-1
    8000788c:	00d70023          	sb	a3,0(a4)
    80007890:	fec798e3          	bne	a5,a2,80007880 <__memmove+0x12c>
    80007894:	00813403          	ld	s0,8(sp)
    80007898:	01010113          	addi	sp,sp,16
    8000789c:	00008067          	ret
    800078a0:	02069713          	slli	a4,a3,0x20
    800078a4:	02075713          	srli	a4,a4,0x20
    800078a8:	00170713          	addi	a4,a4,1
    800078ac:	00e50733          	add	a4,a0,a4
    800078b0:	00050793          	mv	a5,a0
    800078b4:	0005c683          	lbu	a3,0(a1)
    800078b8:	00178793          	addi	a5,a5,1
    800078bc:	00158593          	addi	a1,a1,1
    800078c0:	fed78fa3          	sb	a3,-1(a5)
    800078c4:	fee798e3          	bne	a5,a4,800078b4 <__memmove+0x160>
    800078c8:	f89ff06f          	j	80007850 <__memmove+0xfc>
	...
